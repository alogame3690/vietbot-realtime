# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sat Jul 12 11:52:10 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 12 11:42 backup-data/database/vietbot_20250712_114235.sql
-rw-r--r-- 1 root root 0 Jul 12 11:43 backup-data/database/vietbot_20250712_114335.sql
-rw-r--r-- 1 root root 0 Jul 12 11:44 backup-data/database/vietbot_20250712_114436.sql
-rw-r--r-- 1 root root 0 Jul 12 11:45 backup-data/database/vietbot_20250712_114537.sql
-rw-r--r-- 1 root root 0 Jul 12 11:46 backup-data/database/vietbot_20250712_114637.sql
-rw-r--r-- 1 root root 0 Jul 12 11:47 backup-data/database/vietbot_20250712_114738.sql
-rw-r--r-- 1 root root 0 Jul 12 11:48 backup-data/database/vietbot_20250712_114839.sql
-rw-r--r-- 1 root root 0 Jul 12 11:49 backup-data/database/vietbot_20250712_114939.sql
-rw-r--r-- 1 root root 0 Jul 12 11:50 backup-data/database/vietbot_20250712_115040.sql
-rw-r--r-- 1 root root 0 Jul 12 11:51 backup-data/database/vietbot_20250712_115140.sql
```

## 📊 CURRENT STATE
- Total Files: 23399
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
