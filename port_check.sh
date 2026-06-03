#!/bin/bash
# Check if a TCP port is listening on localhost
# Usage: ./port_check.sh PORT

PORT="$1"
if [ -z "$PORT" ]; then
  echo "Usage: $0 PORT"
  exit 1
fi

if command -v ss >/dev/null 2>&1; then
  ss -ltn | grep -q ":$PORT " && echo "Port $PORT is listening" || echo "Port $PORT is not listening"
else
  netstat -tln 2>/dev/null | grep -q ":$PORT " && echo "Port $PORT is listening" || echo "Port $PORT is not listening"
fi