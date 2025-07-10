# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 01:21:29 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 01:11 backup-data/database/vietbot_20250711_011132.sql
-rw-r--r-- 1 root root 0 Jul 11 01:12 backup-data/database/vietbot_20250711_011233.sql
-rw-r--r-- 1 root root 0 Jul 11 01:13 backup-data/database/vietbot_20250711_011333.sql
-rw-r--r-- 1 root root 0 Jul 11 01:14 backup-data/database/vietbot_20250711_011434.sql
-rw-r--r-- 1 root root 0 Jul 11 01:15 backup-data/database/vietbot_20250711_011534.sql
-rw-r--r-- 1 root root 0 Jul 11 01:16 backup-data/database/vietbot_20250711_011635.sql
-rw-r--r-- 1 root root 0 Jul 11 01:17 backup-data/database/vietbot_20250711_011736.sql
-rw-r--r-- 1 root root 0 Jul 11 01:18 backup-data/database/vietbot_20250711_011836.sql
-rw-r--r-- 1 root root 0 Jul 11 01:19 backup-data/database/vietbot_20250711_011937.sql
-rw-r--r-- 1 root root 0 Jul 11 01:20 backup-data/database/vietbot_20250711_012038.sql
```

## 📊 CURRENT STATE
- Total Files: 4946
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
