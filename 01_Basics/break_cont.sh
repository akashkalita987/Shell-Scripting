#!/bin/bash
################################################################################
# SCRIPT: break_cont.sh
# PURPOSE: Demonstrate break and continue statements in loops
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand the break statement (exit loop)
#   - Understand the continue statement (skip iteration)
#   - Know when to use each control structure
#   - Learn loop flow control
#
# USAGE: ./break_cont.sh
#
# EXPECTED OUTPUT:
#   Evaluating numbers 1 to 5:
#   Number: 1
#   Number: 2
#     Skipping 3 (using continue)
#   Number: 4
#     Breaking loop at 5 (using break)
################################################################################

echo "Evaluating numbers 1 to 5:"

for i in {1..5}; do
    # Check if current number equals 3
    if [ $i -eq 3 ]; then
        echo "  Skipping 3 (using continue)"
        continue            # Skips remaining code in this iteration
    fi

    # Check if current number equals 5
    if [ $i -eq 5 ]; then
        echo "  Breaking loop at 5 (using break)"
        break               # Exits the entire loop
    fi

    # This code executes for numbers 1, 2, 4 (not 3 or 5)
    echo "Number: $i"
done

################################################################################
# LOOP CONTROL STATEMENTS:
#
# 1. BREAK STATEMENT
#    - Exits the loop immediately
#    - Useful when target is found or condition is met
#    - Skips all remaining iterations
#
#    Example:
#      for i in {1..10}; do
#        if [ $i -eq 5 ]; then break; fi
#        echo $i
#      done
#    Output: 1 2 3 4
#
# 2. CONTINUE STATEMENT
#    - Skips remaining code in current iteration
#    - Continues with the next iteration
#    - Useful to skip processing for certain conditions
#
#    Example:
#      for i in {1..5}; do
#        if [ $i -eq 3 ]; then continue; fi
#        echo $i
#      done
#    Output: 1 2 4 5
#
# 3. NESTED LOOPS
#    - break only exits innermost loop
#    - break 2 exits 2 levels of loops
#
#    Example:
#      for i in {1..3}; do
#        for j in {1..3}; do
#          if [ $j -eq 2 ]; then break 2; fi  # Exits both loops
#          echo "i=$i, j=$j"
#        done
#      done
#
# COMPARISON TABLE:
# ┌─────────┬────────────────────┬──────────────────────┐
# │         │ continue           │ break                │
# ├─────────┼────────────────────┼──────────────────────┤
# │ Action  │ Skip this iteration│ Exit loop entirely   │
# │ Use     │ Skip bad data      │ Found what we need   │
# │ Nesting │ continue 2 (2 loops)│ break 2 (2 loops)    │
# └─────────┴────────────────────┴──────────────────────┘
################################################################################

# TRY THIS:
# 1. Change the condition to skip even numbers instead
# 2. Add a nested loop and use break 2 to exit both
# 3. Modify to print numbers 1-10, skip multiples of 3
