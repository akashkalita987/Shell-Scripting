#!/bin/bash
# Topic: Arithmetic Operators (%, /) & While Loop

echo -n "Enter a number: "
read num

reverse=0
temp=$num

while [ $num -gt 0 ]
do
    remainder=$((num % 10))
    reverse=$((reverse * 10 + remainder))
    num=$((num / 10))
done

echo "Original Number: $temp"
echo "Reversed Number: $reverse"