#!/bin/bash
# Topic: Arithmetic Operators (+, -, *, /)

a=15
b=5

# Performing evaluations using $(( ... )) syntax
sum=$((a + b)) 
sub=$((a - b))
mul=$((a * b))
div=$((a / b))

echo "Numbers: a=$a, b=$b"
echo "Addition: $sum"
echo "Subtraction: $sub"
echo "Multiplication: $mul"
echo "Division: $div"