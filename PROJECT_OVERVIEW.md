# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Thu Jul 10 09:47:55 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 10 21:38 backup-data/database/vietbot_20250710_213826.sql
-rw-r--r-- 1 root root 0 Jul 10 21:39 backup-data/database/vietbot_20250710_213926.sql
-rw-r--r-- 1 root root 0 Jul 10 21:40 backup-data/database/vietbot_20250710_214027.sql
-rw-r--r-- 1 root root 0 Jul 10 21:41 backup-data/database/vietbot_20250710_214128.sql
-rw-r--r-- 1 root root 0 Jul 10 21:42 backup-data/database/vietbot_20250710_214228.sql
-rw-r--r-- 1 root root 0 Jul 10 21:43 backup-data/database/vietbot_20250710_214329.sql
-rw-r--r-- 1 root root 0 Jul 10 21:44 backup-data/database/vietbot_20250710_214429.sql
-rw-r--r-- 1 root root 0 Jul 10 21:45 backup-data/database/vietbot_20250710_214530.sql
-rw-r--r-- 1 root root 0 Jul 10 21:46 backup-data/database/vietbot_20250710_214631.sql
-rw-r--r-- 1 root root 0 Jul 10 21:47 backup-data/database/vietbot_20250710_214731.sql
```

## 📊 CURRENT STATE
- Total Files: 3044
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
