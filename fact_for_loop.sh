#!/bin/bash
# Topic: For Loop & Multiplication Assignment

echo -n "Enter a number: "
read num

factorial=1

# Loop from 1 up to the entered number
for (( i=1; i<=num; i++ ))
do
    factorial=$((factorial * i))
done

echo "The factorial of $num is: $factorial"