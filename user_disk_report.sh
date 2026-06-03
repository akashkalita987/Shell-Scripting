#!/bin/bash
# Show disk usage summary for home directories (or given path)
# Usage: ./user_disk_report.sh [path]

PATH_TO_CHECK="${1:-/home}"

echo "Disk usage summary for $PATH_TO_CHECK"
du -sh "$PATH_TO_CHECK"/* 2>/dev/null | sort -h
