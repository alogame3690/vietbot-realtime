# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sat Jul 12 04:45:43 PM +07 2025

## 🏗️ SYSTEM ARCHITECTURE
- **Main VPS**: 103.170.123.14 (Production)
- **Backup VPS**: 103.77.172.150 (Backup & Monitor)
- **GitHub**: https://github.com/alogame3690/vietbot-realtime

## 📁 PROJECT FILES (Backup VPS)
```
backup-data/auto-track.sh
backup-data/current/docker-state.json
backup-data/current/n8n_workflows.json
backup-data/files/My_workflow_2_10.json
backup-data/INDEX.json
backup-data/realtime-backup.sh
backup-data/SEARCH_INDEX.json
```

## 🔧 KEY SCRIPTS
### auto-track.sh
```bash
#!/bin/bash
# VIETBOT COMPLETE AUTO TRACKING SYSTEM
# Thay thế toàn bộ /vietbot-brain/auto-track.sh
# Function: Sync từ Main VPS
    echo "[$(date)] Starting sync from main VPS"
```
### realtime-backup.sh
```bash
#!/bin/bash
    echo "[$(date)] Generating status..." >> $LOG
# VIETBOT STATUS
## System Info
## Last Activity
$(tail -5 /var/log/vietbot-backup.log 2>/dev/null || echo "No logs")
```

## 💾 DATABASE BACKUPS
```
-rw-r--r-- 1 root root 0 Jul 12 16:35 backup-data/database/vietbot_20250712_163535.sql
-rw-r--r-- 1 root root 0 Jul 12 16:36 backup-data/database/vietbot_20250712_163636.sql
-rw-r--r-- 1 root root 0 Jul 12 16:37 backup-data/database/vietbot_20250712_163737.sql
-rw-r--r-- 1 root root 0 Jul 12 16:38 backup-data/database/vietbot_20250712_163837.sql
-rw-r--r-- 1 root root 0 Jul 12 16:39 backup-data/database/vietbot_20250712_163938.sql
-rw-r--r-- 1 root root 0 Jul 12 16:40 backup-data/database/vietbot_20250712_164038.sql
-rw-r--r-- 1 root root 0 Jul 12 16:41 backup-data/database/vietbot_20250712_164139.sql
-rw-r--r-- 1 root root 0 Jul 12 16:42 backup-data/database/vietbot_20250712_164239.sql
-rw-r--r-- 1 root root 0 Jul 12 16:43 backup-data/database/vietbot_20250712_164340.sql
-rw-r--r-- 1 root root 0 Jul 12 16:44 backup-data/database/vietbot_20250712_164441.sql
```

## 📊 CURRENT STATE
- Total Files: 26009
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
