#!/bin/bash
################################################################################
# SCRIPT: calculator.sh
# PURPOSE: Demonstrate basic arithmetic operations
# DIFFICULTY: Beginner
#
# LEARNING OBJECTIVES:
#   - Learn arithmetic operators (+, -, *, /)
#   - Understand arithmetic expansion syntax
#   - Practice variable assignment and output
#
# USAGE: ./calculator.sh
#
# EXPECTED OUTPUT:
#   Numbers: a=15, b=5
#   Addition: 20
#   Subtraction: 10
#   Multiplication: 75
#   Division: 3
################################################################################

# Define two numbers
a=15
b=5

# Performing arithmetic using $(( ... )) syntax
sum=$((a + b))          # Addition: 15 + 5 = 20
sub=$((a - b))          # Subtraction: 15 - 5 = 10
mul=$((a * b))          # Multiplication: 15 * 5 = 75
div=$((a / b))          # Division: 15 / 5 = 3

# Display results
echo "Numbers: a=$a, b=$b"
echo "Addition: $sum"
echo "Subtraction: $sub"
echo "Multiplication: $mul"
echo "Division: $div"

################################################################################
# ARITHMETIC IN BASH:
#
# 1. ARITHMETIC EXPANSION: $((expression))
#    result=$((10 + 5))      # result = 15
#    result=$((10 - 3))      # result = 7
#    result=$((10 * 2))      # result = 20
#    result=$((10 / 3))      # result = 3 (integer division)
#
# 2. ARITHMETIC OPERATORS:
#
#    Basic:
#    +       Addition
#    -       Subtraction
#    *       Multiplication
#    /       Division (integer result)
#    %       Modulo (remainder)
#    **      Power/Exponentiation
#
#    Example:
#    5 + 3 = 8
#    5 - 3 = 2
#    5 * 3 = 15
#    5 / 3 = 1 (not 1.67, bash uses integer division)
#    5 % 3 = 2 (remainder of 5÷3)
#    2 ** 3 = 8 (2 to the power of 3)
#
# 3. ASSIGNMENT OPERATORS:
#    var=$((var + 1))    # Increment by 1
#    var=$((var - 1))    # Decrement by 1
#    var=$((var * 2))    # Double
#    var=$((var / 2))    # Halve
#
#    Shorthand:
#    ((var++))           # Post-increment
#    ((++var))           # Pre-increment
#    ((var--))           # Post-decrement
#    ((--var))           # Pre-decrement
#
# 4. IMPORTANT: INTEGER ARITHMETIC ONLY
#    Bash performs integer arithmetic only!
#    5 / 2 = 2 (not 2.5)
#    For decimals, use: bc, awk, or bc
#
#    Example with bc:
#    result=$(echo "scale=2; 5 / 2" | bc)
#    echo $result    # Output: 2.50
#
# 5. ALTERNATIVE SYNTAXES:
#    $((expression))     # Arithmetic expansion (preferred)
#    $[expression]       # Older syntax (deprecated)
#    let expression      # Let command
#    ((expression))      # Arithmetic evaluation (no $)
#
#    Example:
#    sum=$((2 + 3))      # Modern syntax
#    let sum=2+3         # Let syntax
#    ((sum = 2 + 3))     # Evaluation syntax
#    echo $[2 + 3]       # Old syntax (avoid)
#
# 6. VARIABLE REFERENCE IN ARITHMETIC:
#    In $(()), $ is NOT required:
#    x=5; y=3
#    result=$((x + y))   # Correct
#    result=$(($x + $y)) # Also works but redundant
#
#    However, in strings you MUST use $:
#    echo "Result: $result"
#
# 7. ORDER OF OPERATIONS (Operator Precedence):
#    **, *, /, %   (higher precedence)
#    +, -          (lower precedence)
#    ()            (use for clarity)
#
#    Example:
#    2 + 3 * 4 = 14 (not 20)
#    (2 + 3) * 4 = 20
#    2 ** 3 * 4 = 32 (8 * 4)
#
# 8. COMPARISON IN ARITHMETIC:
#    result=$((5 > 3))   # result = 1 (true)
#    result=$((5 < 3))   # result = 0 (false)
#    result=$((5 == 3))  # result = 0 (false)
################################################################################

# TRY THIS:
# 1. Add modulo operation: mod=$((a % b))
# 2. Add power: power=$((a ** 2))
# 3. Make it interactive: read a and b from user input
# 4. Calculate using bc for decimal results
# 5. Add error handling for division by zero
