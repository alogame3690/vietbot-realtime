# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sat Jul 12 12:40:44 AM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 12 00:30 backup-data/database/vietbot_20250712_003034.sql
-rw-r--r-- 1 root root 0 Jul 12 00:31 backup-data/database/vietbot_20250712_003135.sql
-rw-r--r-- 1 root root 0 Jul 12 00:32 backup-data/database/vietbot_20250712_003236.sql
-rw-r--r-- 1 root root 0 Jul 12 00:33 backup-data/database/vietbot_20250712_003336.sql
-rw-r--r-- 1 root root 0 Jul 12 00:34 backup-data/database/vietbot_20250712_003437.sql
-rw-r--r-- 1 root root 0 Jul 12 00:35 backup-data/database/vietbot_20250712_003538.sql
-rw-r--r-- 1 root root 0 Jul 12 00:36 backup-data/database/vietbot_20250712_003638.sql
-rw-r--r-- 1 root root 0 Jul 12 00:37 backup-data/database/vietbot_20250712_003739.sql
-rw-r--r-- 1 root root 0 Jul 12 00:38 backup-data/database/vietbot_20250712_003839.sql
-rw-r--r-- 1 root root 0 Jul 12 00:39 backup-data/database/vietbot_20250712_003940.sql
```

## 📊 CURRENT STATE
- Total Files: 17414
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
