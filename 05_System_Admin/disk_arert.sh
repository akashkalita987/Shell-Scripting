#!/bin/bash
# Topic: System Monitoring (df, awk/sed)

# Fetches root partition consumption percentage, removing the '%' symbol
disk_usage=$(df -h / | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Current Root Partition Space Consumption: ${disk_usage}%"

if [ "$disk_usage" -ge 80 ]; then
    echo "WARNING: Critical Storage Threshold Breached! Disk utilization exceeds 80%."
else
    echo "Status Summary: Storage usage parameters are within nominal safety bounds."
fi