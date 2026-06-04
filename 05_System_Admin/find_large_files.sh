#!/bin/bash
# Find files larger than a given size (default 100M)
# Usage: ./find_large_files.sh [size] [path]

SIZE="${1:-100M}"
PATH_TO_SEARCH="${2:-.}"

echo "Searching for files larger than $SIZE in $PATH_TO_SEARCH"
find "$PATH_TO_SEARCH" -type f -size +$SIZE -exec ls -lh {} \; | awk '{ print $5 "\t" $9 }' | sort -h
