#!/bin/bash
# Pretty-print JSON from stdin or a file. Uses jq if available, falls back to python
# Usage: cat file.json | ./json_pretty.sh  OR ./json_pretty.sh file.json

if command -v jq >/dev/null 2>&1; then
  if [ -t 0 ] && [ -n "$1" ]; then
    jq . "$1"
  else
    jq .
  fi
else
  if [ -n "$1" ]; then
    python -m json.tool "$1"
  else
    python -m json.tool
  fi
fi