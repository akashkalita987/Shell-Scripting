#!/bin/bash
################################################################################
# SCRIPT: while_loop.sh
# PURPOSE: Demonstrate while loop with counter incrementing
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand while loop syntax and behavior
#   - Learn counter-based loops
#   - Understand loop increment operations
#   - Learn the difference between while and for loops
#
# USAGE: ./while_loop.sh
#
# EXPECTED OUTPUT:
#   Count value: 1
#   Count value: 2
#   Count value: 3
#   Count value: 4
#   Count value: 5
################################################################################

# Initialize counter variable
count=1

# While loop: continues as long as condition is true
while [ $count -le 5 ]; do
    echo "Count value: $count"

    # Increment counter (add 1 to current value)
    count=$((count + 1))
    # Alternative: ((count++)) or count=$((count+1))
done

################################################################################
# WHILE LOOP SYNTAX:
#
#   while [ condition ]; do
#       # Commands to execute
#   done
#
# EXECUTION FLOW:
#   1. Check condition
#   2. If TRUE: execute commands, go to step 1
#   3. If FALSE: skip loop body and continue after done
#
# KEY DIFFERENCES (While vs For):
#
# WHILE LOOP (condition-based):
#   - Continues while condition is TRUE
#   - Useful when repetitions unknown
#   - Must manually update counter/condition
#   - Risk of infinite loop if not careful
#
#   while [ $i -lt 10 ]; do
#       echo $i
#       i=$((i + 1))
#   done
#
# FOR LOOP (collection-based):
#   - Iterates over list of items
#   - Useful when items/range known
#   - Automatic increment
#   - Safer - no infinite loop risk
#
#   for i in {1..10}; do
#       echo $i
#   done
#
# COMPARISON OPERATORS FOR CONDITIONS:
#   -eq : equal (==)
#   -ne : not equal (!=)
#   -lt : less than (<)
#   -le : less than or equal (<=)
#   -gt : greater than (>)
#   -ge : greater than or equal (>=)
#
# ARITHMETIC OPERATIONS:
#   $((var + 1))    # Addition
#   $((var - 1))    # Subtraction
#   $((var * 2))    # Multiplication
#   $((var / 2))    # Division
#   $((var % 3))    # Modulo (remainder)
#   $((var ** 2))   # Power
#
# INCREMENT METHODS:
#   count=$((count + 1))    # Traditional
#   ((count++))             # C-style post-increment
#   ((++count))             # C-style pre-increment
#   count=$((count+=1))     # Addition assignment
#
# INFINITE LOOP WARNING:
#   while true; do
#       echo "This runs forever"
#       # Missing break statement causes infinite loop!
#   done
#
#   To stop infinite loop: Ctrl+C
################################################################################

# TRY THIS:
# 1. Change condition to count from 1 to 10
# 2. Count backwards from 5 to 1
# 3. Count by 2s (1, 3, 5, 7, 9)
# 4. Add a condition to stop at 3: if [ $count -eq 3 ]; then break; fi
