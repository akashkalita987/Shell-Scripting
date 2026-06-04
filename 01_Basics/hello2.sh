#!/bin/bash
################################################################################
# SCRIPT: hello2.sh
# PURPOSE: Demonstrate variables and string output
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand shell variable declaration and usage
#   - Learn string concatenation
#   - Understand variable expansion with $
#
# USAGE: ./hello2.sh
#
# EXPECTED OUTPUT: hello bhai!!!!
################################################################################

# When you see a line without $, it's treated as a literal command to execute
echo "hello bhai!!!!"

################################################################################
# VARIABLE CONCEPTS:
#
# 1. VARIABLE DECLARATION
#    Syntax: variable_name=value
#    Rules:
#      - No spaces around = sign
#      - Names are case-sensitive
#      - Use underscore for multi-word names
#
#    Example:
#      greeting="hello"
#      name="Akash"
#      echo "$greeting bhai $name"
#
# 2. VARIABLE USAGE
#    - Use $ before variable name to access its value
#    - ${variable} - full syntax with braces (more reliable)
#    - $variable - short syntax
#
# 3. QUOTING
#    - Single quotes: prevents variable expansion ('$greeting' → $greeting)
#    - Double quotes: allows variable expansion ("$greeting" → hello)
#    - No quotes: word splitting and expansion occurs
#
# EXAMPLES:
#   NAME="Akash"
#   echo "Hello $NAME"           # Output: Hello Akash
#   echo 'Hello $NAME'           # Output: Hello $NAME (literal)
#   echo "Hello ${NAME}!"        # Output: Hello Akash!
#
# 4. CONCATENATION
#    Bash joins adjacent strings automatically:
#    echo "Hello " "World"       # Output: Hello World
#    echo $greeting $name        # Output: hello Akash
################################################################################

# TRY THIS:
# 1. Uncomment below and modify:
#    greeting="hello"
#    name="bhai!!!!"
#    echo "$greeting $name"
#
# 2. Create variables for other greetings and test them
# 3. Test single vs double quotes to see the difference
