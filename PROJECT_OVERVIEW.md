# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 08:26:29 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 20:17 backup-data/database/vietbot_20250711_201701.sql
-rw-r--r-- 1 root root 0 Jul 11 20:18 backup-data/database/vietbot_20250711_201801.sql
-rw-r--r-- 1 root root 0 Jul 11 20:19 backup-data/database/vietbot_20250711_201902.sql
-rw-r--r-- 1 root root 0 Jul 11 20:20 backup-data/database/vietbot_20250711_202002.sql
-rw-r--r-- 1 root root 0 Jul 11 20:21 backup-data/database/vietbot_20250711_202103.sql
-rw-r--r-- 1 root root 0 Jul 11 20:22 backup-data/database/vietbot_20250711_202204.sql
-rw-r--r-- 1 root root 0 Jul 11 20:23 backup-data/database/vietbot_20250711_202304.sql
-rw-r--r-- 1 root root 0 Jul 11 20:24 backup-data/database/vietbot_20250711_202405.sql
-rw-r--r-- 1 root root 0 Jul 11 20:25 backup-data/database/vietbot_20250711_202505.sql
-rw-r--r-- 1 root root 0 Jul 11 20:26 backup-data/database/vietbot_20250711_202606.sql
```

## 📊 CURRENT STATE
- Total Files: 15152
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
