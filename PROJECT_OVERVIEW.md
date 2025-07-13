# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sun Jul 13 08:06:15 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 13 07:56 backup-data/database/vietbot_20250713_075658.sql
-rw-r--r-- 1 root root 0 Jul 13 07:57 backup-data/database/vietbot_20250713_075759.sql
-rw-r--r-- 1 root root 0 Jul 13 07:58 backup-data/database/vietbot_20250713_075859.sql
-rw-r--r-- 1 root root 0 Jul 13 08:00 backup-data/database/vietbot_20250713_080000.sql
-rw-r--r-- 1 root root 0 Jul 13 08:01 backup-data/database/vietbot_20250713_080101.sql
-rw-r--r-- 1 root root 0 Jul 13 08:02 backup-data/database/vietbot_20250713_080201.sql
-rw-r--r-- 1 root root 0 Jul 13 08:03 backup-data/database/vietbot_20250713_080302.sql
-rw-r--r-- 1 root root 0 Jul 13 08:04 backup-data/database/vietbot_20250713_080402.sql
-rw-r--r-- 1 root root 0 Jul 13 08:05 backup-data/database/vietbot_20250713_080503.sql
-rw-r--r-- 1 root root 0 Jul 13 08:06 backup-data/database/vietbot_20250713_080604.sql
```

## 📊 CURRENT STATE
- Total Files: 34217
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
