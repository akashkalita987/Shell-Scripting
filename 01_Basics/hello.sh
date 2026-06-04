#!/bin/bash
################################################################################
# SCRIPT: hello.sh
# PURPOSE: Demonstrate the most basic shell script - echo command
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand shebang line (#!)
#   - Learn echo command for output
#   - Know how to run a shell script
#
# USAGE: ./hello.sh
#
# EXPECTED OUTPUT: hello
################################################################################

# The echo command prints text to the console
echo "hello"

################################################################################
# KEY CONCEPTS:
#
# 1. SHEBANG (#!/bin/bash)
#    - First line that tells the system which interpreter to use
#    - Must be on the very first line
#    - Not required if you run: bash hello.sh
#
# 2. ECHO COMMAND
#    - Prints text to standard output (terminal)
#    - Default adds newline at the end
#    - Variations: echo -n (no newline), echo -e (interpret escapes)
#
# EXAMPLES:
#   echo "Hello World"           # Outputs: Hello World
#   echo -n "No newline"         # Outputs: No newline (no line break)
#   echo "Line 1\nLine 2"        # With -e: prints on two lines
#
# 3. HOW TO RUN THIS SCRIPT
#    Option 1: chmod +x hello.sh && ./hello.sh
#    Option 2: bash hello.sh
#    Option 3: source hello.sh
################################################################################

# TRY THIS:
# 1. Modify the echo to print your name
# 2. Add multiple echo statements
# 3. Use echo -n to print without newline
