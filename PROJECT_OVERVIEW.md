# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 06:01:02 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 05:51 backup-data/database/vietbot_20250711_055123.sql
-rw-r--r-- 1 root root 0 Jul 11 05:52 backup-data/database/vietbot_20250711_055224.sql
-rw-r--r-- 1 root root 0 Jul 11 05:53 backup-data/database/vietbot_20250711_055325.sql
-rw-r--r-- 1 root root 0 Jul 11 05:54 backup-data/database/vietbot_20250711_055425.sql
-rw-r--r-- 1 root root 0 Jul 11 05:55 backup-data/database/vietbot_20250711_055526.sql
-rw-r--r-- 1 root root 0 Jul 11 05:56 backup-data/database/vietbot_20250711_055626.sql
-rw-r--r-- 1 root root 0 Jul 11 05:57 backup-data/database/vietbot_20250711_055727.sql
-rw-r--r-- 1 root root 0 Jul 11 05:58 backup-data/database/vietbot_20250711_055828.sql
-rw-r--r-- 1 root root 0 Jul 11 05:59 backup-data/database/vietbot_20250711_055928.sql
-rw-r--r-- 1 root root 0 Jul 11 06:00 backup-data/database/vietbot_20250711_060029.sql
```

## 📊 CURRENT STATE
- Total Files: 7439
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
