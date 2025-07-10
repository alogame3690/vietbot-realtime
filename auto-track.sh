#!/bin/bash
# VIETBOT COMPLETE AUTO TRACKING SYSTEM
# Thay thế toàn bộ /vietbot-brain/auto-track.sh

MAIN_VPS="103.77.214.227"
SSH_KEY="/root/.ssh/vietbot_sync"

# Function: Sync từ Main VPS
sync_from_main() {
    echo "[$(date)] Starting sync from main VPS"
    
    # 1. Sync files
    rsync -avz -e "ssh -i $SSH_KEY" \
        root@$MAIN_VPS:/opt/vietbot/ \
        /vietbot-brain/files/ \
        --exclude='.git' --exclude='node_modules'
    
    # 2. Backup PostgreSQL
    ssh -i $SSH_KEY root@$MAIN_VPS \
        "docker exec vietbot_postgres pg_dump -U vietbot vietbot_ai" \
        > /vietbot-brain/database/vietbot_$(date +%Y%m%d_%H%M%S).sql
    
    # 3. Backup Redis
    ssh -i $SSH_KEY root@$MAIN_VPS \
        "docker exec vietbot_redis redis-cli BGSAVE && sleep 2"
    
    scp -i $SSH_KEY root@$MAIN_VPS:/data/dump.rdb \
        /vietbot-brain/database/redis_$(date +%Y%m%d_%H%M%S).rdb 2>/dev/null || true
    
    # 4. Get Docker states
    ssh -i $SSH_KEY root@$MAIN_VPS "docker ps -a --format json" \
        > /vietbot-brain/current/docker-state.json
    
    # 5. Update current state
    cat > /vietbot-brain/current/STATE.md << EOF
# VIETBOT CURRENT STATE
Last Update: $(date)
Main VPS: $MAIN_VPS
Backup VPS: $(hostname -I | cut -d' ' -f1)

## SYSTEM STATUS
$(ssh -i $SSH_KEY root@$MAIN_VPS "docker ps --format 'table {{.Names}}\t{{.Status}}'")

## LATEST CHANGES
$(tail -10 /vietbot-brain/history/changes.log 2>/dev/null)
EOF
    
    # Keep only last 10 backups
    ls -t /vietbot-brain/database/*.sql | tail -n +11 | xargs rm -f
    ls -t /vietbot-brain/database/*.rdb | tail -n +11 | xargs rm -f
}

# Function: Track mọi thứ cho Claude
track_everything() {
    echo "[$(date)] Tracking everything for Claude..."
    
    # 1. Sync N8N workflows
    ssh -i $SSH_KEY root@$MAIN_VPS \
        "docker exec vietbot_n8n n8n export:workflow --all" \
        > /vietbot-brain/current/n8n_workflows.json 2>/dev/null || \
        echo "[]" > /vietbot-brain/current/n8n_workflows.json
    
    # 2. Get Redis keys (không lấy hết data vì nặng)
    ssh -i $SSH_KEY root@$MAIN_VPS \
        "docker exec vietbot_redis redis-cli KEYS '*'" \
        > /vietbot-brain/current/redis_keys.txt 2>/dev/null
    
    # 3. Export database schema chi tiết
    ssh -i $SSH_KEY root@$MAIN_VPS \
        "docker exec vietbot_postgres psql -U vietbot -d vietbot_ai -c '\d+'" \
        > /vietbot-brain/current/database_schema.txt 2>/dev/null
    
    # 4. Lưu docker logs (errors, debug)
    mkdir -p /vietbot-brain/logs
    for container in n8n postgres redis caddy; do
        ssh -i $SSH_KEY root@$MAIN_VPS \
            "docker logs vietbot_${container} --tail 100" \
            > /vietbot-brain/logs/${container}_latest.log 2>&1
    done
    
    # 5. SESSION TRACKING - Quan trọng nhất!
    cat > /vietbot-brain/current/SESSION_STATE.md << 'EOF'
# VIETBOT SESSION STATE - $(date)
Claude PHẢI đọc file này khi bắt đầu phiên!

## 🔄 ĐANG LÀM GÌ
- Phase 1: Nền tảng [90%] 
- Database PostgreSQL ✅
- N8N Workflow imported ✅
- Backup system running ✅
- Next: Test workflow & config Facebook

## 📌 23 RULES BẮT BUỘC
0. 🔴 TUYỆT ĐỐI TRUNG THỰC
1. Đối chiếu dữ liệu tổng thể
2. Note bắt buộc về đối chiếu
3. Tiếng Việt 100%
4. Tránh xử lý cái ngọn
5. Đối chiếu kỹ, không vội
6. Không code vội, phải hỏi
7. Chỉ làm đúng yêu cầu
8. Tuân thủ tuyệt đối
9. Tiếng Việt, xưng em gọi anh
10. Giữ ngữ cảnh xưng hô
11. Là cố vấn & cộng sự
12. Session tag format
13. Strategic advisor role
14. Decision validation
15. Advisor response template
16. Nói ít, đúng trọng tâm
17. Load rules trước khi reply
18. Code phải vào artifact
19. Code phải thận trọng
20. Không được assume
21. Xóa data phải cẩn thận
22. Làm từng bước
23. Check trước fix sau

## 🗄️ DATABASE STATUS
Tables: customers, sessions, conversations, message_queue, intents, orders, order_items, products, faq, escalations, analytics, system_config
Connection: postgres://vietbot:vietbot@postgres:5432/vietbot_ai

## 🐳 SERVICES STATUS
- n8n: https://n8n.ntvn8n.xyz
- PostgreSQL: 103.77.214.227:5432
- Redis: 103.77.214.227:6379
- pgAdmin: 103.77.214.227:5050
- Grafana: 103.77.214.227:3000

## 📁 PROJECT FILES
- Workflows: /current/n8n_workflows.json
- Database: /database/vietbot_*.sql
- Logs: /logs/
- Configs: /files/
- Docker compose: /files/docker-compose.yml

## ⚡ CLAUDE INSTRUCTIONS
1. LUÔN check file này đầu tiên khi start session
2. Tìm data trong /current/ và /database/ khi cần
3. KHÔNG nói "không biết" khi chưa search backup
4. Check /logs/ nếu có error
5. Follow 23 rules TUYỆT ĐỐI

## 🎯 IMMEDIATE ACTIONS
1. Test N8N workflow với Facebook webhook
2. Config Facebook Page Token
3. Test end-to-end flow
4. Fix any errors that arise
EOF

    # 6. Tạo INDEX cho Claude search
    cat > /vietbot-brain/SEARCH_INDEX.json << EOF
{
    "last_update": "$(date)",
    "project": "VietBot AI - Facebook Messenger Chatbot",
    "quick_links": {
        "session_state": "http://103.77.172.150/current/SESSION_STATE.md",
        "rules": "http://103.77.172.150/modules/RULES.md",
        "database_schema": "http://103.77.172.150/current/database_schema.txt",
        "workflows": "http://103.77.172.150/current/n8n_workflows.json",
        "docker_status": "http://103.77.172.150/current/docker-state.json",
        "logs": "http://103.77.172.150/logs/"
    },
    "search_hints": {
        "khi_hỏi_về_workflow": "Check /current/n8n_workflows.json",
        "khi_hỏi_về_database": "Check /database/ và /current/database_schema.txt",
        "khi_hỏi_về_error": "Check /logs/",
        "khi_hỏi_về_config": "Check /files/docker-compose.yml",
        "khi_hỏi_về_progress": "Check /current/SESSION_STATE.md"
    },
    "credentials": {
        "n8n": "admin@n8n.ntvn8n.xyz / tpESpExTk6w4n0iS",
        "pgAdmin": "admin@example.com / admin",
        "postgres": "vietbot / vietbot / vietbot_ai"
    }
}
EOF

    echo "[$(date)] Tracking completed" >> /vietbot-brain/history/tracking.log
}

# Function: Git auto commit
git_auto_commit() {
    cd /vietbot-brain
    git add -A
    CHANGES=$(git status --porcelain | wc -l)
    if [ $CHANGES -gt 0 ]; then
        git commit -m "Auto backup: $(date +%Y-%m-%d\ %H:%M:%S) - $CHANGES files changed" || true
        git push origin main 2>/dev/null || true
    fi
}

# Function: Update index for Claude
update_index() {
    cat > /vietbot-brain/INDEX.json << EOF
{
    "project": "VietBot AI",
    "last_update": "$(date)",
    "main_vps": "$MAIN_VPS",
    "backup_vps": "$(hostname -I | cut -d' ' -f1)",
    "endpoints": {
        "current_state": "http://$(hostname -I | cut -d' ' -f1)/current/SESSION_STATE.md",
        "rules": "http://$(hostname -I | cut -d' ' -f1)/modules/RULES.md",
        "database_schema": "http://$(hostname -I | cut -d' ' -f1)/current/database_schema.txt",
        "progress": "http://$(hostname -I | cut -d' ' -f1)/modules/progress.md",
        "docker_state": "http://$(hostname -I | cut -d' ' -f1)/current/docker-state.json",
        "search_index": "http://$(hostname -I | cut -d' ' -f1)/SEARCH_INDEX.json"
    },
    "stats": {
        "total_backups": $(ls /vietbot-brain/database/*.sql 2>/dev/null | wc -l),
        "last_sync": "$(date)",
        "disk_usage": "$(du -sh /vietbot-brain | cut -f1)"
    }
}
EOF
}

# Main loop
echo "[$(date)] VietBot Auto Tracking Started" >> /vietbot-brain/history/startup.log
while true; do
    sync_from_main
    track_everything
    update_index
    git_auto_commit
    
    echo "[$(date)] Sync cycle completed" >> /vietbot-brain/history/sync.log
    sleep 60  # 1 phút
done
