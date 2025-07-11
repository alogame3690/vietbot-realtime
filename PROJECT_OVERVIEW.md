# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 09:39:03 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 21:29 backup-data/database/vietbot_20250711_212944.sql
-rw-r--r-- 1 root root 0 Jul 11 21:30 backup-data/database/vietbot_20250711_213045.sql
-rw-r--r-- 1 root root 0 Jul 11 21:31 backup-data/database/vietbot_20250711_213146.sql
-rw-r--r-- 1 root root 0 Jul 11 21:32 backup-data/database/vietbot_20250711_213246.sql
-rw-r--r-- 1 root root 0 Jul 11 21:33 backup-data/database/vietbot_20250711_213347.sql
-rw-r--r-- 1 root root 0 Jul 11 21:34 backup-data/database/vietbot_20250711_213447.sql
-rw-r--r-- 1 root root 0 Jul 11 21:35 backup-data/database/vietbot_20250711_213548.sql
-rw-r--r-- 1 root root 0 Jul 11 21:36 backup-data/database/vietbot_20250711_213649.sql
-rw-r--r-- 1 root root 0 Jul 11 21:37 backup-data/database/vietbot_20250711_213749.sql
-rw-r--r-- 1 root root 0 Jul 11 21:38 backup-data/database/vietbot_20250711_213850.sql
```

## 📊 CURRENT STATE
- Total Files: 15800
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
