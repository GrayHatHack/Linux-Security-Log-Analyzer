#!/bin/bash

LOG_DIR="/var/log/security_reports"
DAYS_TO_KEEP=7

echo "=== Starting Security Report Cleanup ==="
echo "Target Directory: $LOG_DIR"
echo "Retention Period: $DAYS_TO_KEEP days"
echo "--------------------------------------------------"

# Check karein ki directory exist karti hai ya nahi
if [ -d "$LOG_DIR" ]; then
    # 7 din se purani files ko dhoond kar delete karna
    DELETED_COUNT=$(find "$LOG_DIR" -type f -name "security_report_*.txt" -mtime +$DAYS_TO_KEEP | wc -l)

    if [ "$DELETED_COUNT" -gt 0 ]; then
        echo "[i] Found $DELETED_COUNT old report(s) older than $DAYS_TO_KEEP days. Deleting..."
        find "$LOG_DIR" -type f -name "security_report_*.txt" -mtime +$DAYS_TO_KEEP -exec rm -f {} \;
        echo "[+] Cleanup completed successfully!"
    else
        echo "[+] No old reports found to delete. Everything is clean."
    fi
else
    echo "[!] Error: Log directory $LOG_DIR does not exist!"
fi

echo "--------------------------------------------------"
