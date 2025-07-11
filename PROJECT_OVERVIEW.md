# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Fri Jul 11 06:46:14 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 11 18:37 backup-data/database/vietbot_20250711_183701.sql
-rw-r--r-- 1 root root 0 Jul 11 18:38 backup-data/database/vietbot_20250711_183802.sql
-rw-r--r-- 1 root root 0 Jul 11 18:39 backup-data/database/vietbot_20250711_183903.sql
-rw-r--r-- 1 root root 0 Jul 11 18:40 backup-data/database/vietbot_20250711_184003.sql
-rw-r--r-- 1 root root 0 Jul 11 18:41 backup-data/database/vietbot_20250711_184104.sql
-rw-r--r-- 1 root root 0 Jul 11 18:42 backup-data/database/vietbot_20250711_184205.sql
-rw-r--r-- 1 root root 0 Jul 11 18:43 backup-data/database/vietbot_20250711_184305.sql
-rw-r--r-- 1 root root 0 Jul 11 18:44 backup-data/database/vietbot_20250711_184406.sql
-rw-r--r-- 1 root root 0 Jul 11 18:45 backup-data/database/vietbot_20250711_184506.sql
-rw-r--r-- 1 root root 0 Jul 11 18:46 backup-data/database/vietbot_20250711_184607.sql
```

## 📊 CURRENT STATE
- Total Files: 14261
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
