#!/bin/bash
# Topic: Modulus Operator (%) & Conditional Checking

echo -n "Enter a number: "
read num

# Check remainder when divided by 2
if [ $((num % 2)) -eq 0 ]; then 
    echo "$num is an Even number."
else
    echo "$num is an Odd number."
fi