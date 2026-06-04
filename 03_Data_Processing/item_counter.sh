#!/bin/bash
################################################################################
# SCRIPT: item_counter.sh (File Statistics)
# PURPOSE: Count lines, words, and characters in a file
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Learn wc (word count) command
#   - Understand file existence checking
#   - Learn command output capture
#   - Practice variable assignment from commands
#
# USAGE: ./item_counter.sh
#        Enter filename when prompted
#
# EXAMPLE:
#   Enter the filename: README.md
#   --- File Statistics for 'README.md' ---
#   Total Lines      : 45
#   Total Words      : 320
#   Total Characters : 2150
#
# WC COMMAND EXPLAINED:
#   wc = word count command
#   - Counts lines, words, and characters
#   - Default shows all three
#
# OPTIONS:
#   -l : Lines only
#   -w : Words only
#   -c : Bytes/characters only
#   -m : Characters (same as -c in most cases)
################################################################################

# Prompt for filename
echo -n "Enter the filename: "
read filename

# Check if file exists using -f test
if [ -f "$filename" ]; then
    # Use command substitution to capture output
    # < filename : redirect file as input
    # wc -l : count lines
    # wc -w : count words
    # wc -m : count characters/bytes
    lines=$(wc -l < "$filename")
    words=$(wc -w < "$filename")
    chars=$(wc -m < "$filename")

    # Display results with formatted output
    echo "--- File Statistics for '$filename' ---"
    echo "Total Lines      : $lines"
    echo "Total Words      : $words"
    echo "Total Characters : $chars"
else
    echo "Error: File '$filename' not found."
fi

################################################################################
# WC COMMAND DETAILED:
#
# Syntax: wc [OPTION] [FILE]
#
# Basic usage:
#   wc file.txt              # Lines, words, bytes
#   wc -l file.txt           # Lines only
#   wc -w file.txt           # Words only
#   wc -c file.txt           # Bytes only
#   wc -m file.txt           # Characters only
#   wc -L file.txt           # Longest line length
#
# Example output:
#   $ wc myfile.txt
#    45  320 2150 myfile.txt
#   |   |    |     |
#   lines words bytes filename
#
# Using input redirection:
#   wc < file.txt            # Without filename in output
#   wc -l < file.txt         # Just count lines
#   wc -w < file.txt         # Just count words
#
# Multiple files:
#   wc file1.txt file2.txt   # Stats for each + total
#   wc *.txt                 # All .txt files
#
# With pipes:
#   cat file.txt | wc -l     # Count lines via pipe
#   echo "hello world" | wc -w  # Count words in text
#
# Extracting just the number:
#   lines=$(wc -l < file.txt)         # No filename in output
#   lines=$(wc -l file.txt | awk '{print $1}')  # Extract number
#
# DEFINITION OF WORD:
#   A word is a sequence of characters delimited by whitespace
#   "hello world" = 2 words
#   "one,two,three" = 1 word (comma doesn't delimit)
#
# DEFINITION OF LINE:
#   A line is a sequence of characters ending with newline (\n)
#   If file doesn't end with newline, last line may not count
#
# DEFINITION OF CHARACTER/BYTE:
#   -c : Bytes (includes multibyte characters as multiple)
#   -m : Characters (counts Unicode properly)
#
# COMMAND SUBSTITUTION:
#
#   $(command)       # Modern syntax (preferred)
#   `command`        # Old backtick syntax
#
#   Example:
#   result=$(wc -l < file.txt)
#   today=$(date +%Y-%m-%d)
#   files=$(ls *.txt)
#
# INPUT REDIRECTION:
#
#   < file : Read from file
#   > file : Write to file (overwrite)
#   >> file : Append to file
#   | : Pipe (pass output to next command)
#
#   Example:
#   wc -l < input.txt > output.txt
#   cat file.txt | wc -l
#   grep "word" file.txt | wc -l
#
# COMMON PATTERNS:
#
#   # Count lines in all text files
#   wc -l *.txt | tail -1
#
#   # Count words in directory
#   wc -w *.md
#
#   # Find file with most lines
#   wc -l * | sort -n | tail -1
#
#   # Count comments in code
#   grep -c "^#" file.sh
#
#   # Count total lines across all files
#   find . -name "*.txt" | xargs wc -l | tail -1
#
# SHELL ARITHMETIC WITH WC:
#
#   lines=$(wc -l < file.txt)
#   doubled=$((lines * 2))
#   echo "If we doubled it: $doubled"
################################################################################

# TRY THIS:
# 1. Show longest line length: longest=$(wc -L < "$filename")
# 2. Add these to output: echo "Longest line: $longest"
# 3. Calculate average word per line
# 4. Compare two files: wc -l file1.txt file2.txt
# 5. List all .sh files with their line counts: wc -l *.sh
# 6. Find which file has the most lines
# 7. Add a condition: if [ $lines -gt 1000 ]; then echo "Large file"; fi
# 8. Make interactive menu to show different statistics
