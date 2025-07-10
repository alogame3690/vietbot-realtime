# 🤖 VIETBOT PROJECT - FULL DOCUMENTATION
**Auto-updated**: Thu Jul 10 09:08:43 PM +07 2025

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
-rw-r--r-- 1 root root 0 Jul 10 20:59 backup-data/database/vietbot_20250710_205902.sql
-rw-r--r-- 1 root root 0 Jul 10 21:00 backup-data/database/vietbot_20250710_210003.sql
-rw-r--r-- 1 root root 0 Jul 10 21:01 backup-data/database/vietbot_20250710_210104.sql
-rw-r--r-- 1 root root 0 Jul 10 21:02 backup-data/database/vietbot_20250710_210204.sql
-rw-r--r-- 1 root root 0 Jul 10 21:03 backup-data/database/vietbot_20250710_210305.sql
-rw-r--r-- 1 root root 0 Jul 10 21:04 backup-data/database/vietbot_20250710_210405.sql
-rw-r--r-- 1 root root 0 Jul 10 21:05 backup-data/database/vietbot_20250710_210506.sql
-rw-r--r-- 1 root root 0 Jul 10 21:06 backup-data/database/vietbot_20250710_210607.sql
-rw-r--r-- 1 root root 0 Jul 10 21:07 backup-data/database/vietbot_20250710_210707.sql
-rw-r--r-- 1 root root 0 Jul 10 21:08 backup-data/database/vietbot_20250710_210808.sql
```

## 📊 CURRENT STATE
- Total Files: 2693
- Scripts: 2
- Python Files: 0
- Last Sync: 2025-07-10 16:18:50.896721968 +0700

## 🖥️ MAIN VPS INFO


## 🚨 HOW TO ACCESS DATA
- View any file: "Xem file backup-data/[filename] từ github alogame3690/vietbot-realtime"
- Check logs: "Show backup-data/logs/[logfile]"
- View scripts: "List all .sh files in backup-data/"
