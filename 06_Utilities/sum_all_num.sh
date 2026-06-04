#!/bin/bash
################################################################################
# SCRIPT: sum_all_num.sh
# PURPOSE: Sum all digits in a number entered by user
# DIFFICULTY: Beginner to Intermediate
#
# LEARNING OBJECTIVES:
#   - Understand while loops with complex conditions
#   - Learn modulo and division for digit extraction
#   - Practice arithmetic accumulation
#   - Understand algorithm development
#
# USAGE: ./sum_all_num.sh
#        Then enter a number when prompted
#
# EXAMPLE:
#   Enter a number: 123
#   The sum of digits for 123 is: 6
#
# MATH EXPLANATION:
#   123: 1 + 2 + 3 = 6
#   456: 4 + 5 + 6 = 15
#   9999: 9 + 9 + 9 + 9 = 36
#
# ALGORITHM:
#   1. Get last digit using modulo (%): 123 % 10 = 3
#   2. Add to sum
#   3. Remove last digit using division (/): 123 / 10 = 12
#   4. Repeat until number becomes 0
################################################################################

# Prompt for user input
echo -n "Enter a number: "
read num

# Initialize sum to 0
sum=0

# Save original number for display later
temp=$num

# Loop while number is greater than 0
while [ $num -gt 0 ]; do
    # Extract last digit using modulo (remainder of division by 10)
    mod=$((num % 10))

    # Add the digit to sum
    sum=$((sum + mod))

    # Remove last digit from number (integer division by 10)
    num=$((num / 10))

    # Debug (uncomment to see step-by-step): echo "  num=$num, digit=$mod, sum=$sum"
done

# Display result
echo "The sum of digits for $temp is: $sum"

################################################################################
# DIGIT EXTRACTION ALGORITHM:
#
# Method: Repeatedly extract last digit and remove it
#
# Example with 123:
#
# Step 1: num=123
#   digit = 123 % 10 = 3 (last digit)
#   num = 123 / 10 = 12 (remove last digit)
#   sum = 0 + 3 = 3
#
# Step 2: num=12
#   digit = 12 % 10 = 2 (last digit)
#   num = 12 / 10 = 1 (remove last digit)
#   sum = 3 + 2 = 5
#
# Step 3: num=1
#   digit = 1 % 10 = 1 (last digit)
#   num = 1 / 10 = 0 (remove last digit)
#   sum = 5 + 1 = 6
#
# Loop condition: num=0, exit loop
# Final: sum = 6
#
# MODULO OPERATOR (%):
#   - Returns remainder after division
#   - n % 10 extracts the last digit
#   - n % 100 gives last two digits
#
#   123 % 10 = 3 (last digit)
#   123 % 100 = 23 (last two digits)
#
# INTEGER DIVISION (/):
#   - Discards decimal part
#   - n / 10 removes last digit
#   - n / 100 removes last two digits
#
#   123 / 10 = 12 (removes last digit)
#   123 / 100 = 1 (removes last two digits)
#
# LOOP STRUCTURE:
#   while [ $num -gt 0 ]; do
#       # Process current state of num
#       # Update num to approach 0
#   done
#
#   This pattern is useful whenever you need to:
#   - Extract digits
#   - Process array-like data
#   - Count down from value to 0
#
# VARIATIONS:
#
#   # Count digits
#   count=0
#   while [ $num -gt 0 ]; do
#       count=$((count + 1))
#       num=$((num / 10))
#   done
#
#   # Reverse digits
#   rev=0
#   while [ $num -gt 0 ]; do
#       rev=$((rev * 10 + num % 10))
#       num=$((num / 10))
#   done
#
#   # Check if palindrome
#   if [ $original -eq $reversed ]; then
#       echo "Palindrome!"
#   fi
#
# EDGE CASES:
#   - Single digit: loop runs once
#   - Zero: loop doesn't run, sum=0
#   - Negative numbers: don't work (would infinite loop)
#   - Large numbers: works but slower
#
# ALTERNATIVE WITH echo:
#   # Using bash parameter expansion
#   for digit in $(echo "$num" | grep -o .); do
#       sum=$((sum + digit))
#   done
#
#   # Using sed
#   sum=$(echo "$num" | sed 's/./& /g' | tr ' ' '\n' | awk '{s+=$0} END {print s}')
################################################################################

# TRY THIS:
# 1. Count how many digits are in the number
# 2. Find product of digits instead of sum
# 3. Check if number is a palindrome (reverse and compare)
# 4. Find average of digits
# 5. Extract and display each digit on its own line
# 6. Add input validation (check for negative numbers)
