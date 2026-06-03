#!/bin/bash
# Replace a string in files recursively (creates .bak backups)
# Usage: ./replace_string.sh "old" "new" [path]

OLD="$1"
NEW="$2"
PATH_TO_SEARCH="${3:-.}"

if [ -z "$OLD" ] || [ -z "$NEW" ]; then
  echo "Usage: $0 \"old\" \"new\" [path]"
  exit 1
fi

grep -RIl --exclude-dir=.git "$OLD" "$PATH_TO_SEARCH" | while read -r file; do
  sed -i.bak "s/${OLD}/${NEW}/g" "$file" && echo "Updated: $file"
done

echo "Replacement complete (backups with .bak)"