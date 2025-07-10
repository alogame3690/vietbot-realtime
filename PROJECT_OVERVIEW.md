# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 06:13:15 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 06:03 backup-data/database/vietbot_20250711_060331.sql
-rw-r--r-- 1 root root 0 Jul 11 06:04 backup-data/database/vietbot_20250711_060431.sql
-rw-r--r-- 1 root root 0 Jul 11 06:05 backup-data/database/vietbot_20250711_060532.sql
-rw-r--r-- 1 root root 0 Jul 11 06:06 backup-data/database/vietbot_20250711_060633.sql
-rw-r--r-- 1 root root 0 Jul 11 06:07 backup-data/database/vietbot_20250711_060733.sql
-rw-r--r-- 1 root root 0 Jul 11 06:08 backup-data/database/vietbot_20250711_060834.sql
-rw-r--r-- 1 root root 0 Jul 11 06:09 backup-data/database/vietbot_20250711_060934.sql
-rw-r--r-- 1 root root 0 Jul 11 06:10 backup-data/database/vietbot_20250711_061035.sql
-rw-r--r-- 1 root root 0 Jul 11 06:11 backup-data/database/vietbot_20250711_061136.sql
-rw-r--r-- 1 root root 0 Jul 11 06:12 backup-data/database/vietbot_20250711_061236.sql
```

## 📊 CURRENT STATE
- Total Files: 7547
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
