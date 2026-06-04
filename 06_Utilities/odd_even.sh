#!/bin/bash
################################################################################
# SCRIPT: odd_even.sh
# PURPOSE: Check if a number is odd or even using modulo operator
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand modulo operator (%)
#   - Learn conditional statements (if/else)
#   - Practice user input and arithmetic
#   - Learn number theory basics
#
# USAGE: ./odd_even.sh
#        Then enter a number when prompted
#
# EXAMPLE:
#   Enter a number: 7
#   7 is an Odd number.
#
# MATH CONCEPT:
#   - Even numbers: divisible by 2 (remainder = 0)
#   - Odd numbers: not divisible by 2 (remainder = 1)
################################################################################

# Prompt user for input
echo -n "Enter a number: "

# Read user input
read num

# Check remainder when divided by 2
# If remainder is 0 → even, otherwise → odd
if [ $((num % 2)) -eq 0 ]; then
    echo "$num is an Even number."
else
    echo "$num is an Odd number."
fi

################################################################################
# MODULO OPERATOR (%):
#
# Definition: Returns the remainder after division
# Syntax: dividend % divisor
#
# Examples:
#   5 % 2 = 1  (5 ÷ 2 = 2 remainder 1)
#   6 % 2 = 0  (6 ÷ 2 = 3 remainder 0)
#   7 % 3 = 1  (7 ÷ 3 = 2 remainder 1)
#   10 % 4 = 2 (10 ÷ 4 = 2 remainder 2)
#   8 % 4 = 0  (8 ÷ 4 = 2 remainder 0)
#
# COMMON USES:
#   1. Check if even: number % 2 == 0
#   2. Check if odd: number % 2 == 1
#   3. Check if divisible by N: number % N == 0
#   4. Limit range: index % array_length
#   5. Check every Nth item: if [ $((count % 10)) -eq 0 ]
#
# IF/ELSE CONDITIONAL STATEMENT:
#
# Syntax:
#   if [ condition ]; then
#       # Commands if true
#   else
#       # Commands if false
#   fi
#
# COMPARISON OPERATORS:
#   -eq : equal to (==)
#   -ne : not equal to (!=)
#   -lt : less than (<)
#   -le : less than or equal (<=)
#   -gt : greater than (>)
#   -ge : greater than or equal (>=)
#
# LOGICAL OPERATORS:
#   && : AND (both conditions true)
#   || : OR (either condition true)
#   !  : NOT (negate condition)
#
# EXAMPLES:
#   if [ $a -eq $b ]; then echo "equal"; fi
#   if [ $a -ne $b ]; then echo "not equal"; fi
#   if [ $a -lt $b ] && [ $a -gt 0 ]; then echo "positive and less"; fi
#   if [ $a -eq 5 ] || [ $a -eq 10 ]; then echo "5 or 10"; fi
#   if [ ! -f "$file" ]; then echo "file not found"; fi
#
# MULTI-BRANCH CONDITIONALS:
#
#   if [ condition1 ]; then
#       # Code if condition1 is true
#   elif [ condition2 ]; then
#       # Code if condition1 is false and condition2 is true
#   elif [ condition3 ]; then
#       # Code if condition1 and condition2 are false and condition3 is true
#   else
#       # Code if all conditions are false
#   fi
#
# EXAMPLE:
#   if [ $grade -ge 90 ]; then
#       echo "Grade A"
#   elif [ $grade -ge 80 ]; then
#       echo "Grade B"
#   elif [ $grade -ge 70 ]; then
#       echo "Grade C"
#   else
#       echo "Grade F"
#   fi
#
# NESTED CONDITIONS:
#   if [ $age -gt 18 ]; then
#       if [ $score -gt 80 ]; then
#           echo "Eligible for advanced course"
#       fi
#   fi
#
# ARITHMETIC INSIDE [ ]:
#   Note: Inside [ ], you can use arithmetic operators
#   [ $num -eq 5 ]              # Test if num equals 5
#   [ $(( $num % 2 )) -eq 0 ]   # Test if num is even
#   [ $((num + 1)) -gt 10 ]     # Test arithmetic result
################################################################################

# TRY THIS:
# 1. Add elif to categorize: single digit, double digit, larger
# 2. Check if divisible by 3: if [ $((num % 3)) -eq 0 ]
# 3. Find all even numbers from 1 to 20 (use a loop)
# 4. Add input validation (check if input is a number)
# 5. Classify as prime/composite (harder challenge)
