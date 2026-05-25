#!/bin/bash
# Topic: Arrays

# Initializing an array containing strings
os_list=("Ubuntu" "Kali" "Debian" "Fedora") 

# Accessing specific elements using index counters (starts at 0)
echo "First OS element: ${os_list[0]}"
echo "Second OS element: ${os_list[1]}" 

# Displaying all elements in the array at once
echo "Complete OS list: ${os_list[*]}"