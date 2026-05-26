#!/bin/bash
# Topic: Text Processing Utilities (grep)

echo -n "Enter the file to search inside: "
read filename

echo -n "Enter the keyword pattern to search for: "
read keyword

if [ -f "$filename" ]; then
    echo "--- Search Results inside $filename ---"
    
    # grep flags: -n prints line numbers, -i ignores text case rules
    grep -ni "$keyword" "$filename"
    
    if [ $? -ne 0 ]; then
        echo "No matching pattern instances found."
    fi
else
    echo "Error: File target not found."
fi