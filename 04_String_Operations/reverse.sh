#!/bin/bash
################################################################################
# SCRIPT: reverse.sh
# PURPOSE: Reverse a number and display both original and reversed
# DIFFICULTY: Intermediate
#
# LEARNING OBJECTIVES:
#   - Understand digit extraction and reconstruction
#   - Learn accumulation patterns
#   - Practice arithmetic and loops
#   - Understand algorithm development
#
# USAGE: ./reverse.sh
#        Then enter a number when prompted
#
# EXAMPLE:
#   Enter a number: 12345
#   Original Number: 12345
#   Reversed Number: 54321
#
# ALGORITHM:
#   1. Extract last digit: 12345 % 10 = 5
#   2. Add to result: reverse = 0*10 + 5 = 5
#   3. Remove last digit: 12345 / 10 = 1234
#   4. Repeat until number becomes 0
################################################################################

# Prompt for input
echo -n "Enter a number: "
read num

# Initialize reverse to 0
reverse=0

# Save original for display
temp=$num

# Loop while number > 0
while [ $num -gt 0 ]
do
    # Extract last digit
    remainder=$((num % 10))

    # Add to reverse: shift left (×10) then add new digit
    # e.g., 0 * 10 + 5 = 5
    # then  5 * 10 + 4 = 54
    # then 54 * 10 + 3 = 543
    reverse=$((reverse * 10 + remainder))

    # Remove last digit from num
    num=$((num / 10))

    # Debug (uncomment): echo "num=$num, digit=$remainder, reverse=$reverse"
done

# Display results
echo "Original Number: $temp"
echo "Reversed Number: $reverse"

################################################################################
# DIGIT REVERSAL ALGORITHM EXPLAINED:
#
# Example: Reverse 123
#
# Step 1:
#   num = 123, reverse = 0
#   remainder = 123 % 10 = 3
#   reverse = 0 * 10 + 3 = 3
#   num = 123 / 10 = 12
#
# Step 2:
#   num = 12, reverse = 3
#   remainder = 12 % 10 = 2
#   reverse = 3 * 10 + 2 = 32
#   num = 12 / 10 = 1
#
# Step 3:
#   num = 1, reverse = 32
#   remainder = 1 % 10 = 1
#   reverse = 32 * 10 + 1 = 321
#   num = 1 / 10 = 0
#
# Loop exits: num = 0
# Final: reverse = 321
#
# KEY OPERATION: reverse = reverse * 10 + digit
#
# This shifts all previous digits left and adds the new digit to the right:
#   3      → 30     → 300
#   3      → 32     → 320
#   3      → 32     → 321
#             ↑ add 2  ↑ add 1
#
# THE PATTERN:
#   - reverse * 10: shifts digits left (123 → 1230)
#   - + remainder: adds new digit to right (1230 + 4 = 1234)
#
#   Without the * 10, we'd just get: 3 + 2 + 1 = 6 (sum, not reversal)
#   With the * 10, we get: 321 (actual reversal)
#
# RELATED OPERATIONS:
#
#   # Count digits
#   count=0
#   while [ $num -gt 0 ]; do
#       count=$((count + 1))
#       num=$((num / 10))
#   done
#
#   # Sum of digits
#   sum=0
#   while [ $num -gt 0 ]; do
#       sum=$((sum + num % 10))
#       num=$((num / 10))
#   done
#
#   # Product of digits
#   product=1
#   while [ $num -gt 0 ]; do
#       product=$((product * (num % 10)))
#       num=$((num / 10))
#   done
#
#   # Check palindrome
#   temp=$num
#   reversed=0
#   while [ $num -gt 0 ]; do
#       reversed=$((reversed * 10 + num % 10))
#       num=$((num / 10))
#   done
#   [ $temp -eq $reversed ] && echo "Palindrome"
#
# EDGE CASES:
#
#   Single digit (e.g., 5):
#   → Returns 5 (same as original)
#
#   Numbers ending in 0 (e.g., 120):
#   → Returns 21 (leading zero dropped)
#       120 reversed in math = 021 = 21
#
#   Negative numbers:
#   → This script doesn't handle negatives
#     Negative reversal is more complex
#
# LIMITATIONS OF BASH:
#   - Only integer arithmetic
#   - Numbers > 2^63 may have precision issues
#   - Very large numbers: use bc or other tools
#
# ALTERNATIVE APPROACH (String-based):
#   reversed=$(echo "$num" | rev)
#   This simply reverses the string representation
#   But then comparison becomes string-based, not numeric
################################################################################

# TRY THIS:
# 1. Handle negative numbers (keep sign)
# 2. Check if number is palindrome after reversing
# 3. Find all 3-digit palindromes
# 4. Handle the trailing zero case (120 → 21)
# 5. Add validation for non-numeric input
# 6. Compare and show digit-by-digit difference
