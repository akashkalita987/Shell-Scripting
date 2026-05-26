#!/bin/bash
# Topic: Advanced Commands (wc) & File I/O

echo -n "Enter the filename: "
read filename

# Check if the file exists using string conditional flags
if [ -f "$filename" ]; then
    # Parse output using word count (wc) utility
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    chars=$(wc -m < "$filename")

    echo "--- File Statistics for '$filename' ---"
    echo "Total Lines      : $lines"
    echo "Total Words      : $words"
    echo "Total Characters : $chars"
else
    echo "Error: File '$filename' not found."
fi