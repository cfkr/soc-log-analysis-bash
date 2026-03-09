#!/bin/bash

LOGFILE=$1

if [ -z "$LOGFILE" ]; then
    echo "Usage: $0 /path/to/auth.log"
    exit 1
fi

echo "===================================="
echo "      SOC SSH Attack Analysis       "
echo "===================================="
echo ""

echo "[+] Total Failed Login Attempts"
grep "Failed password" "$LOGFILE" | wc -l
echo ""

echo "[+] Unique Attacker IP Count"
grep "Failed password" "$LOGFILE" | awk '{print $11}' | sort | uniq | wc -l
echo ""

echo "[+] Top Attacking IPs"
grep "Failed password" "$LOGFILE" | awk '{print $11}' | sort | uniq -c | sort -nr | head
echo ""

echo "[+] Top Targeted Users"
grep "Failed password" "$LOGFILE" | awk '{print $9}' | sort | uniq -c | sort -nr | head
echo ""

echo "[+] Attack Timeline (Hour Distribution)"
grep "Failed password" "$LOGFILE" | awk '{print $3}' | cut -d: -f1 | sort | uniq -c | sort -nr
echo ""

echo "===================================="
echo "Analysis Completed"
