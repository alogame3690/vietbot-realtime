#!/bin/bash

LOG="/var/log/vietbot-realtime.log"

while true; do
    echo "[$(date)] Generating status..." >> $LOG
    
    # Tạo file status
    cat > REALTIME_STATUS.md << STATUS
# VIETBOT STATUS
**Updated**: $(date)

## System Info
- IP: 103.77.172.150
- Uptime: $(uptime -p)
- Files: $(find . -type f | wc -l)

## Last Activity
$(tail -5 /var/log/vietbot-backup.log 2>/dev/null || echo "No logs")
STATUS

    # Commit & push
    git add -A
    git commit -m "Update $(date +%H:%M:%S)" >> $LOG 2>&1
    git push origin main >> $LOG 2>&1
    
    sleep 30
done
