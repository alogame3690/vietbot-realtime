# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 04:13:23 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 04:03 backup-data/database/vietbot_20250711_040317.sql
-rw-r--r-- 1 root root 0 Jul 11 04:04 backup-data/database/vietbot_20250711_040418.sql
-rw-r--r-- 1 root root 0 Jul 11 04:05 backup-data/database/vietbot_20250711_040518.sql
-rw-r--r-- 1 root root 0 Jul 11 04:06 backup-data/database/vietbot_20250711_040619.sql
-rw-r--r-- 1 root root 0 Jul 11 04:07 backup-data/database/vietbot_20250711_040720.sql
-rw-r--r-- 1 root root 0 Jul 11 04:08 backup-data/database/vietbot_20250711_040820.sql
-rw-r--r-- 1 root root 0 Jul 11 04:09 backup-data/database/vietbot_20250711_040921.sql
-rw-r--r-- 1 root root 0 Jul 11 04:10 backup-data/database/vietbot_20250711_041021.sql
-rw-r--r-- 1 root root 0 Jul 11 04:11 backup-data/database/vietbot_20250711_041122.sql
-rw-r--r-- 1 root root 0 Jul 11 04:12 backup-data/database/vietbot_20250711_041223.sql
```

## 📊 CURRENT STATE
- Total Files: 6476
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
