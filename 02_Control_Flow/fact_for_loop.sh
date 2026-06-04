#!/bin/bash
################################################################################
# SCRIPT: fact_for_loop.sh
# PURPOSE: Calculate factorial using for loop with user input
# DIFFICULTY: Beginner to Intermediate
#
# LEARNING OBJECTIVES:
#   - Understand for loop syntax
#   - Learn user input with read command
#   - Practice arithmetic operations
#   - Understand loop variable usage
#
# USAGE: ./fact_for_loop.sh
#         Then enter a number when prompted
#
# EXAMPLE:
#   Enter a number: 5
#   The factorial of 5 is: 120
#
# MATH BACKGROUND:
#   Factorial (n!) = n × (n-1) × (n-2) × ... × 1
#   5! = 5 × 4 × 3 × 2 × 1 = 120
#   0! = 1 (by definition)
################################################################################

# Prompt user for input
echo -n "Enter a number: "

# Read user input into variable
read num

# Initialize factorial to 1 (multiplicative identity)
factorial=1

# For loop: iterate from 1 up to the entered number
# Syntax: for (( initialize; condition; increment ))
for (( i=1; i<=num; i++ ))
do
    # Multiply factorial by current loop variable
    factorial=$((factorial * i))
    # echo "Step $i: factorial = $factorial"  # Uncomment for debug
done

# Display final result
echo "The factorial of $num is: $factorial"

################################################################################
# FOR LOOP VARIATIONS:
#
# 1. C-STYLE FOR LOOP (used in this script):
#    for (( i=1; i<=5; i++ )); do
#        echo $i
#    done
#    Output: 1 2 3 4 5
#
#    Syntax: for (( init; condition; increment ))
#    - init: starting point
#    - condition: when to stop
#    - increment: what to do each iteration
#
# 2. RANGE-BASED FOR LOOP:
#    for i in {1..5}; do
#        echo $i
#    done
#    Output: 1 2 3 4 5
#
# 3. ARRAY-BASED FOR LOOP:
#    arr=("a" "b" "c")
#    for item in "${arr[@]}"; do
#        echo $item
#    done
#    Output: a b c
#
# 4. GLOB-BASED FOR LOOP:
#    for file in *.txt; do
#        echo $file
#    done
#    Output: all .txt files
#
# USER INPUT:
#   read variable_name       # Read one line
#   read -p "Prompt:" var    # Prompt message included
#   read -n 1 var           # Read single character
#   read -s var             # Silent (no echo, for passwords)
#
# ARITHMETIC IN BASH:
#   $((expression))         # Arithmetic expansion
#   let expression          # Let command
#   ((expression))          # Arithmetic evaluation
#
#   Examples:
#   sum=$((2 + 3))         # sum = 5
#   product=$((4 * 5))     # product = 20
#   ((i++))                # increment i
#
# LOOP CONTROL:
#   break     # Exit loop
#   continue  # Skip to next iteration
#
# COMMON PATTERNS:
#   # Sum numbers 1 to N
#   sum=0
#   for ((i=1; i<=5; i++)); do
#       sum=$((sum + i))
#   done
#
#   # Count down
#   for ((i=5; i>=1; i--)); do
#       echo $i
#   done
#
#   # Step by 2
#   for ((i=0; i<=10; i+=2)); do
#       echo $i
#   done
################################################################################

# TRY THIS:
# 1. Calculate sum of 1 to N instead
# 2. Calculate power (n^3 or n^5)
# 3. Add validation: check if input is a number
# 4. Handle edge case: what if user enters 0?
# 5. Add a debug line that shows each multiplication step
