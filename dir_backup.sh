#!/bin/bash
# Create a timestamped tar.gz backup of a directory
# Usage: ./dir_backup.sh /path/to/dir [dest-dir]

SRC_DIR="$1"
DEST_DIR="${2:-.}"

if [ -z "$SRC_DIR" ] || [ ! -d "$SRC_DIR" ]; then
  echo "Usage: $0 /path/to/dir [dest-dir]"
  exit 1
fi

BASE=$(basename "$SRC_DIR")
TS=$(date +%Y%m%d_%H%M%S)
OUT="$DEST_DIR/${BASE}_backup_$TS.tar.gz"

tar -czf "$OUT" -C "$(dirname "$SRC_DIR")" "$BASE"

echo "Backup created: $OUT"