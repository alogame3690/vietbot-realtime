# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 03:12:11 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 15:02 backup-data/database/vietbot_20250711_150254.sql
-rw-r--r-- 1 root root 0 Jul 11 15:03 backup-data/database/vietbot_20250711_150354.sql
-rw-r--r-- 1 root root 0 Jul 11 15:04 backup-data/database/vietbot_20250711_150455.sql
-rw-r--r-- 1 root root 0 Jul 11 15:05 backup-data/database/vietbot_20250711_150556.sql
-rw-r--r-- 1 root root 0 Jul 11 15:06 backup-data/database/vietbot_20250711_150656.sql
-rw-r--r-- 1 root root 0 Jul 11 15:07 backup-data/database/vietbot_20250711_150757.sql
-rw-r--r-- 1 root root 0 Jul 11 15:08 backup-data/database/vietbot_20250711_150857.sql
-rw-r--r-- 1 root root 0 Jul 11 15:09 backup-data/database/vietbot_20250711_150958.sql
-rw-r--r-- 1 root root 0 Jul 11 15:10 backup-data/database/vietbot_20250711_151059.sql
-rw-r--r-- 1 root root 0 Jul 11 15:11 backup-data/database/vietbot_20250711_151159.sql
```

## 📊 CURRENT STATE
- Total Files: 12353
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
