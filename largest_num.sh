#!/bin/bash
# Topic: Comparison Operators (-gt, -lt) & If...Else Statement

num1=25
num2=40

# -gt checks if num1 is greater than num2
if [ $num1 -gt $num2 ]; then 
    echo "$num1 is greater than $num2."
else
    echo "$num2 is greater than $num1." 
fi