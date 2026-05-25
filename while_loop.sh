#!/bin/bash
# Topic: While Loop & Assignment Operator (=)

count=1 

while [ $count -le 5 ]; do 
    echo "Count value: $count" 
    count=$((count + 1)) # Increment counter 
done