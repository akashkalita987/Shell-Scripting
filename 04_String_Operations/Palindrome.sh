#!/bin/bash
################################################################################
# SCRIPT: Palindrome.sh
# PURPOSE: Check if a string is a palindrome using string reversal
# DIFFICULTY: Beginner to Intermediate
#
# LEARNING OBJECTIVES:
#   - Learn string reversal techniques
#   - Understand string comparison
#   - Practice conditional logic with strings
#   - Learn the rev command
#
# USAGE: ./Palindrome.sh
#        Then enter a string when prompted
#
# EXAMPLES:
#   Enter a string: racecar
#   The string 'racecar' is a Palindrome.
#
#   Enter a string: hello
#   The string 'hello' is not a Palindrome.
#
# WHAT IS A PALINDROME?
#   A word/phrase that reads the same forwards and backwards
#   Examples: racecar, radar, level, mom, dad, noon
#   (Case-insensitive: "Racecar" is also a palindrome)
################################################################################

# Prompt user for input
echo -n "Enter a string: "
read input_string

# Reverse the string using rev command
reversed_string=$(echo "$input_string" | rev)

# Compare original with reversed
if [ "$input_string" == "$reversed_string" ]; then
    echo "The string '$input_string' is a Palindrome."
else
    echo "The string '$input_string' is not a Palindrome."
fi

################################################################################
# STRING MANIPULATION COMMANDS:
#
# 1. rev - Reverse string
#    echo "hello" | rev        # Output: olleh
#    rev_var=$(echo "test" | rev)
#
#    Syntax: echo "$string" | rev
#    Output: reversed string
#
# 2. String Comparison
#
#    == vs =
#    [ "$str1" = "$str2" ]    # POSIX compliant
#    [ "$str1" == "$str2" ]   # Bash extension
#    Both work the same in bash
#
#    Not equal:
#    [ "$str1" != "$str2" ]
#
#    Example:
#    if [ "$var" = "apple" ]; then
#        echo "Found apple"
#    fi
#
# 3. CASE SENSITIVITY
#    Palindrome check is case-sensitive by default
#    "Racecar" != "racecaR" when reversed
#
#    To make case-insensitive:
#    input=$(echo "$input_string" | tr '[:upper:]' '[:lower:]')
#    reversed=$(echo "$input" | rev)
#    [ "$input" = "$reversed" ]
#
# 4. COMMAND SUBSTITUTION
#    result=$(command)       # Modern syntax (preferred)
#    result=`command`        # Old syntax (backticks)
#
#    Example:
#    reversed=$(echo "$text" | rev)
#    lines=$(wc -l < file.txt)
#    today=$(date +%Y-%m-%d)
#
# 5. QUOTING IMPORTANCE
#    Always quote variables in comparisons:
#    [ "$var" = "test" ]     # Correct
#    [ $var = test ]         # Risky - fails if $var is empty
#
# 6. STRING OPERATIONS
#
#    Length:
#    len=${#string}
#    len=$(echo -n "$string" | wc -c)
#
#    Substring:
#    ${string:start:length}
#    echo "$string" | cut -c start-end
#
#    Replace:
#    ${string//old/new}      # Replace all
#    ${string/old/new}       # Replace first
#
#    Uppercase/Lowercase:
#    echo "$string" | tr '[:lower:]' '[:upper:]'
#    echo "$string" | tr '[:upper:]' '[:lower:]'
#
#    Examples:
#    str="hello"
#    ${#str}                 # Length: 5
#    ${str:0:3}             # Substring: hel
#    ${str//l/r}            # Replace l with r: herro
#    echo "$str" | tr a-z A-Z  # HELLO
#
# 7. ALTERNATIVES FOR REVERSAL
#
#    Using rev (simplest):
#    rev=$(echo "$str" | rev)
#
#    Using awk:
#    rev=$(echo "$str" | awk '{for(i=length;i>=1;i--)printf "%c",$i}')
#
#    Using bash parameter expansion:
#    rev=$(python -c "print('$str'[::-1])")
#
# 8. SPECIAL CHARACTERS IN STRINGS
#    Handle spaces and special chars:
#    echo "$var" | rev       # Works with spaces
#    [ "$var" = "test" ]     # Quotes preserve spaces
#
#    Without quotes:
#    [ $var = test ]         # Spaces treated as separators
################################################################################

# TRY THIS:
# 1. Make it case-insensitive: convert to lowercase before comparison
#    input=$(echo "$input_string" | tr '[:upper:]' '[:lower:]')
#
# 2. Check digit palindromes: read num instead of string
#
# 3. Ignore spaces: remove spaces before reversing
#    input_clean=$(echo "$input_string" | tr -d ' ')
#
# 4. Find all palindromes in a word list
#
# 5. Check for palindromes ignoring punctuation
#
# 6. Display character-by-character comparison:
#    for i in 1 to length: compare char[i] with char[length-i]
