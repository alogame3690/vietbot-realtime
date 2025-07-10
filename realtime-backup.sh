#!/bin/bash

# SYNC TOÀN BỘ DỰ ÁN TỪ MAIN VPS
MAIN_VPS="103.170.123.14"
LOG="/var/log/vietbot-realtime.log"

while true; do
    echo "[$(date)] Starting full sync..." >> $LOG
    
    # 1. SYNC TẤT CẢ TỪ VIETBOT-BRAIN (BACKUP VPS)
    mkdir -p backup-data
    rsync -av --delete /vietbot-brain/ ./backup-data/ >> $LOG 2>&1
    
    # 2. LẤY THÔNG TIN TỪ MAIN VPS (nếu có SSH key)
    mkdir -p main-vps-data
    ssh -o ConnectTimeout=5 root@$MAIN_VPS "
        # Export project structure
        echo '# MAIN VPS PROJECT STRUCTURE' > /tmp/project-info.txt
        echo '```' >> /tmp/project-info.txt
        find /root -name '*.py' -o -name '*.sh' -o -name '*.json' -o -name '*.yaml' 2>/dev/null | head -100 >> /tmp/project-info.txt
        echo '```' >> /tmp/project-info.txt
        
        # Docker info
        echo '# DOCKER CONTAINERS' >> /tmp/project-info.txt
        docker ps --format 'table {{.Names}}\t{{.Status}}\t{{.Ports}}' >> /tmp/project-info.txt 2>/dev/null
        
        # Service status
        echo '# SERVICES' >> /tmp/project-info.txt
        systemctl list-units --type=service --state=running | grep -E 'vietbot|bot|ai' >> /tmp/project-info.txt 2>/dev/null
        
        cat /tmp/project-info.txt
    " > main-vps-data/system-info.md 2>/dev/null || echo "Cannot connect to Main VPS" > main-vps-data/status.txt
    
    # 3. TẠO PROJECT OVERVIEW
    cat > PROJECT_OVERVIEW.md << OVERVIEW
# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: $(date)

## 🏗️ SYSTEM ARCHITECTURE
- **Main VPS**: 103.170.123.14 (Production)
- **Backup VPS**: 103.77.172.150 (Backup & Monitor)
- **GitHub**: https://github.com/alogame3690/vietbot-realtime

## 📁 PROJECT FILES (Backup VPS)
\`\`\`
$(find backup-data -type f -name "*.sh" -o -name "*.py" -o -name "*.json" | sort)
\`\`\`

## 🔧 KEY SCRIPTS
$(for script in backup-data/*.sh; do
    if [ -f "$script" ]; then
        echo "### $(basename $script)"
        echo '```bash'
        head -20 "$script" | grep -E "^#|function|echo"
        echo '```'
    fi
done)

## 💾 DATABASE BACKUPS
\`\`\`
$(ls -lh backup-data/database/*.sql 2>/dev/null | tail -10 || echo "No database backups found")
\`\`\`

## 📊 CURRENT STATE
- Total Files: $(find backup-data -type f | wc -l)
- Scripts: $(find backup-data -name "*.sh" | wc -l)
- Python Files: $(find backup-data -name "*.py" | wc -l)
- Last Sync: $(stat -c %y backup-data 2>/dev/null || echo "Unknown")

## 🖥️ MAIN VPS INFO
$(cat main-vps-data/system-info.md 2>/dev/null || echo "No data from Main VPS")

## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
OVERVIEW

    # 4. TẠO INDEX CHO CLAUDE
    cat > CLAUDE_INDEX.md << INDEX
# 🔍 CLAUDE SEARCH INDEX

## Quick Commands:
- "Xem PROJECT_OVERVIEW.md để biết tổng quan dự án"
- "Show backup-data/auto-track.sh để xem script backup"
- "List all files in backup-data/"
- "Check main-vps-data/system-info.md"

## File Locations:
- Backup Scripts: backup-data/*.sh
- Database: backup-data/database/
- Logs: backup-data/logs/
- Current State: backup-data/current-state/

## Search Examples:
- "Find all python files in the project"
- "Show me the backup configuration"
- "What services are running on main VPS?"
INDEX

    # COMMIT VÀ PUSH
    git add -A
    git commit -m "🔄 Full sync: $(date +%Y-%m-%d_%H:%M:%S)" >> $LOG 2>&1
    git push origin main --force >> $LOG 2>&1
    
    echo "[$(date)] Sync completed" >> $LOG
    sleep 30
done
