#!/bin/bash
# Topic: Break & Continue Statements

echo "Evaluating numbers 1 to 5:"

for i in {1..5}; do 
    if [ $i -eq 3 ]; then 
        echo "  Skipping 3 (using continue)"
        continue # Skips the rest of this iteration 
    fi
    
    if [ $i -eq 5 ]; then
        echo "  Breaking loop at 5 (using break)"
        break    # Exits the loop entirely 
    fi
    
    echo "Number: $i" 
done