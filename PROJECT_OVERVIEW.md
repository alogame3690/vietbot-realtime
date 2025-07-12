# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Sat Jul 12 03:55:48 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 12 15:46 backup-data/database/vietbot_20250712_154606.sql
-rw-r--r-- 1 root root 0 Jul 12 15:47 backup-data/database/vietbot_20250712_154706.sql
-rw-r--r-- 1 root root 0 Jul 12 15:48 backup-data/database/vietbot_20250712_154807.sql
-rw-r--r-- 1 root root 0 Jul 12 15:49 backup-data/database/vietbot_20250712_154908.sql
-rw-r--r-- 1 root root 0 Jul 12 15:50 backup-data/database/vietbot_20250712_155008.sql
-rw-r--r-- 1 root root 0 Jul 12 15:51 backup-data/database/vietbot_20250712_155109.sql
-rw-r--r-- 1 root root 0 Jul 12 15:52 backup-data/database/vietbot_20250712_155209.sql
-rw-r--r-- 1 root root 0 Jul 12 15:53 backup-data/database/vietbot_20250712_155310.sql
-rw-r--r-- 1 root root 0 Jul 12 15:54 backup-data/database/vietbot_20250712_155411.sql
-rw-r--r-- 1 root root 0 Jul 12 15:55 backup-data/database/vietbot_20250712_155511.sql
```

## 📊 CURRENT STATE
- Total Files: 25568
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
