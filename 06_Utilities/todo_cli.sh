#!/bin/bash
# Simple file-backed TODO CLI: add, list, done
# Usage: ./todo_cli.sh add "task" | list | done N

DB="${HOME}/.simple_todo.txt"

case "$1" in
  add)
    shift
    echo "$*" >> "$DB"
    echo "Added: $*"
    ;;
  list)
    nl -w2 -s": " -ba "$DB"
    ;;
  done)
    if [ -z "$2" ]; then
      echo "Usage: $0 done N"
      exit 1
    fi
    sed -i "${2}d" "$DB"
    echo "Marked done: $2"
    ;;
  *)
    echo "Usage: $0 {add|list|done}"
    exit 1
    ;;
esac