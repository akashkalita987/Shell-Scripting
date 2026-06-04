#!/bin/bash
################################################################################
# SCRIPT: findWord.sh
# PURPOSE: Search for a keyword in a file using grep command
# DIFFICULTY: Intermediate
#
# LEARNING OBJECTIVES:
#   - Learn grep command for text searching
#   - Understand file existence checking
#   - Learn command exit codes ($?)
#   - Practice file I/O operations
#
# USAGE: ./findWord.sh
#        Enter filename and keyword when prompted
#
# EXAMPLE:
#   Enter the file to search inside: data.txt
#   Enter the keyword pattern to search for: apple
#   --- Search Results inside data.txt ---
#   1:I like apple pie
#   3:Apple is a fruit
#   5:The apple tree
#
# GREP OPTIONS USED:
#   -n: Print line numbers
#   -i: Ignore case (case-insensitive)
################################################################################

# Prompt for file and keyword
echo -n "Enter the file to search inside: "
read filename

echo -n "Enter the keyword pattern to search for: "
read keyword

# Check if file exists using -f test
if [ -f "$filename" ]; then
    echo "--- Search Results inside $filename ---"

    # grep options:
    # -n: Print line numbers
    # -i: Ignore case (case-insensitive)
    grep -ni "$keyword" "$filename"

    # Check command exit status
    # $? = 0 if grep found matches, non-zero otherwise
    if [ $? -ne 0 ]; then
        echo "No matching pattern instances found."
    fi
else
    echo "Error: File target not found."
fi

################################################################################
# FILE TESTING OPERATORS:
#
# -f file : True if file exists and is a regular file
# -d dir  : True if directory exists
# -e path : True if file/directory exists
# -r file : True if file is readable
# -w file : True if file is writable
# -x file : True if file is executable
# -s file : True if file exists and has size > 0
# -z str  : True if string is empty
# -n str  : True if string is not empty
#
# Examples:
#   if [ -f "myfile.txt" ]; then
#       echo "File exists"
#   fi
#
#   if [ -d "/tmp" ]; then
#       echo "Directory exists"
#   fi
#
#   if [ -r "$file" ]; then
#       echo "File is readable"
#   fi
#
# GREP COMMAND:
#
# Syntax: grep [options] pattern [files]
#
# Basic usage:
#   grep "word" file.txt       # Find lines containing "word"
#   grep -n "word" file.txt    # Show line numbers
#   grep -i "word" file.txt    # Case-insensitive
#   grep -v "word" file.txt    # Invert match (lines NOT containing word)
#   grep -c "word" file.txt    # Count matching lines
#   grep -R "word" dir/        # Recursive search
#
# Common options:
#   -n : Line numbers
#   -i : Case-insensitive (ignore case)
#   -v : Invert match (NOT matching)
#   -c : Count matches
#   -l : List only filenames
#   -R : Recursive (search subdirectories)
#   -w : Match whole word only
#   -E : Extended regex
#   -o : Print only matching part
#   -B2 -A2: Context (2 lines before and after)
#
# Exit Codes:
#   0 : Pattern found
#   1 : Pattern not found
#   2 : Error (file not found, etc.)
#
# Checking exit code:
#   grep "word" file.txt
#   if [ $? -eq 0 ]; then
#       echo "Found"
#   else
#       echo "Not found"
#   fi
#
#   Or using || and &&:
#   grep "word" file.txt && echo "Found" || echo "Not found"
#
# REGULAR EXPRESSIONS:
#
#   . : Any character
#   ^ : Start of line
#   $ : End of line
#   * : Zero or more
#   + : One or more
#   ? : Zero or one
#   | : OR
#   [] : Character class
#
# Examples:
#   grep "^hello" file.txt      # Lines starting with hello
#   grep "world$" file.txt      # Lines ending with world
#   grep "h.llo" file.txt       # h_llo (any character)
#   grep "hel*o" file.txt       # heo, helo, hello, etc.
#   grep "hello|world" file.txt # Lines with hello OR world
#   grep "[0-9]" file.txt       # Lines with digits
#
# COMMAND SUBSTITUTION:
#   result=$(command)           # Store output in variable
#   count=$(grep -c "word" file)
#
# COMBINING COMMANDS:
#   grep "word" file | wc -l    # Count matches
#   grep "word" file | head -5  # First 5 matches
#   grep "word" file | grep -v "exclude"  # Find but exclude
################################################################################

# TRY THIS:
# 1. Use grep -v to find lines NOT containing the keyword
# 2. Add -w flag to match whole words only
# 3. Count matches instead of showing them: grep -c "$keyword" "$filename"
# 4. Search recursively in a directory
# 5. Show context: add -B2 -A2 to show 2 lines before and after
# 6. Create a file with test data and search it
# 7. Handle multiple keywords with OR: grep -E "keyword1|keyword2"
# 8. Search case-insensitively by default
