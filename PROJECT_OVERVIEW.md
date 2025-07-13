# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sun Jul 13 06:08:19 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 13 17:58 backup-data/database/vietbot_20250713_175835.sql
-rw-r--r-- 1 root root 0 Jul 13 17:59 backup-data/database/vietbot_20250713_175936.sql
-rw-r--r-- 1 root root 0 Jul 13 18:00 backup-data/database/vietbot_20250713_180037.sql
-rw-r--r-- 1 root root 0 Jul 13 18:01 backup-data/database/vietbot_20250713_180137.sql
-rw-r--r-- 1 root root 0 Jul 13 18:02 backup-data/database/vietbot_20250713_180238.sql
-rw-r--r-- 1 root root 0 Jul 13 18:03 backup-data/database/vietbot_20250713_180338.sql
-rw-r--r-- 1 root root 0 Jul 13 18:04 backup-data/database/vietbot_20250713_180439.sql
-rw-r--r-- 1 root root 0 Jul 13 18:05 backup-data/database/vietbot_20250713_180540.sql
-rw-r--r-- 1 root root 0 Jul 13 18:06 backup-data/database/vietbot_20250713_180640.sql
-rw-r--r-- 1 root root 0 Jul 13 18:07 backup-data/database/vietbot_20250713_180741.sql
```

## 📊 CURRENT STATE
- Total Files: 39578
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
