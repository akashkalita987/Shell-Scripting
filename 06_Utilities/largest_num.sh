#!/bin/bash
################################################################################
# SCRIPT: largest_num.sh
# PURPOSE: Find the largest number from two inputs using comparison operators
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Understand comparison operators (-gt, -lt)
#   - Learn if-else-if conditional logic
#   - Practice variable comparison
#
# USAGE: ./largest_num.sh
#
# EXPECTED OUTPUT:
#   25 is less than 40.
#   40 is the greater number.
#   OR (if you modify the script):
#   40 is greater than 25.
################################################################################

# Declare two numbers
num1=25
num2=40

# Compare using -gt (greater than)
# If num1 is greater than num2
if [ $num1 -gt $num2 ]; then
    echo "$num1 is greater than $num2."
else
    echo "$num2 is greater than $num1."
fi

################################################################################
# COMPARISON OPERATORS (Numeric):
#
#   -eq : equal to (==)
#           [ $a -eq $b ]
#
#   -ne : not equal to (!=)
#           [ $a -ne $b ]
#
#   -lt : less than (<)
#           [ $a -lt $b ]
#
#   -le : less than or equal (<=)
#           [ $a -le $b ]
#
#   -gt : greater than (>)
#           [ $a -gt $b ]
#
#   -ge : greater than or equal (>=)
#           [ $a -ge $b ]
#
# COMPARISON OPERATORS (String):
#
#   =  : string equals
#        [ "$str1" = "$str2" ]
#
#   != : string not equals
#        [ "$str1" != "$str2" ]
#
#   -z : string is empty (zero length)
#        [ -z "$str" ]
#
#   -n : string is not empty
#        [ -n "$str" ]
#
# IMPORTANT DISTINCTION:
#
#   Numeric Comparison: [ $num1 -gt $num2 ]
#   String Comparison:  [ "$str1" > "$str2" ]
#   Arithmetic:         [ $((num1)) -gt $((num2)) ]
#
#   Wrong: [ $num1 > $num2 ]  (redirection, not comparison!)
#   Right: [ $num1 -gt $num2 ]
#
# EXAMPLES WITH -gt:
#
#   if [ 10 -gt 5 ]; then
#       echo "10 is greater than 5"
#   fi
#   Output: 10 is greater than 5
#
#   age=25
#   if [ $age -gt 18 ]; then
#       echo "Adult"
#   fi
#   Output: Adult
#
#   if [ $age -gt 18 ] && [ $age -lt 65 ]; then
#       echo "Working age"
#   fi
#
# FINDING MAXIMUM OF THREE NUMBERS:
#
#   num1=10; num2=20; num3=15
#   if [ $num1 -gt $num2 ] && [ $num1 -gt $num3 ]; then
#       echo "$num1 is largest"
#   elif [ $num2 -gt $num1 ] && [ $num2 -gt $num3 ]; then
#       echo "$num2 is largest"
#   else
#       echo "$num3 is largest"
#   fi
#
# COMMON PITFALLS:
#
#   # WRONG: Comparing as strings
#   [ "10" -gt "5" ]   # Works with numeric values
#   [ "apple" -gt "banana" ]  # Wrong! Use = for strings
#
#   # WRONG: Missing quotes
#   [ $var -gt 5 ]  # Works, but breaks if $var is empty
#   [ "$var" -gt 5 ]  # Better, more robust
#
#   # WRONG: Using > instead of -gt
#   [ 10 > 5 ]  # Redirects to file named 5!
#   [ 10 -gt 5 ]  # Correct comparison
#
# QUOTING BEST PRACTICE:
#   [ "$var1" -gt "$var2" ]  # Safe: quoted variables
#   [ $var1 -gt $var2 ]      # Risky: unquoted breaks if empty
#
#   For numbers it's usually OK, but for safety, always quote.
################################################################################

# TRY THIS:
# 1. Make it interactive: read num1 and num2 from user
# 2. Find max of THREE numbers
# 3. Add elif to handle equal numbers
# 4. Create a function to find maximum
# 5. Compare strings instead of numbers
