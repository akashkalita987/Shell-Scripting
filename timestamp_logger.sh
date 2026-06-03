#!/bin/bash
# Append a timestamped message to a log file
# Usage: ./timestamp_logger.sh "Your message" [logfile]

MESSAGE="$1"
LOGFILE="${2:-timestamp.log}"

if [ -z "$MESSAGE" ]; then
  echo "Usage: $0 \"message\" [logfile]"
  exit 1
fi

echo "$(date '+%Y-%m-%d %H:%M:%S') - $MESSAGE" >> "$LOGFILE"

echo "Logged to $LOGFILE"