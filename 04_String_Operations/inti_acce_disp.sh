#!/bin/bash
################################################################################
# SCRIPT: inti_acce_disp.sh
# PURPOSE: Demonstrate array initialization, access, and display
# DIFFICULTY: Beginner to Intermediate
#
# LEARNING OBJECTIVES:
#   - Understand bash arrays
#   - Learn array indexing (0-based)
#   - Learn to access individual and all elements
#   - Practice array iteration
#
# USAGE: ./inti_acce_disp.sh
#
# EXPECTED OUTPUT:
#   First OS element: Ubuntu
#   Second OS element: Kali
#   Complete OS list: Ubuntu Kali Debian Fedora
################################################################################

# Initialize an array containing strings
# Syntax: array_name=(element1 element2 element3 ...)
# Arrays are 0-indexed (first element is at index 0)
os_list=("Ubuntu" "Kali" "Debian" "Fedora")

# Access specific elements using index (starts at 0)
echo "First OS element: ${os_list[0]}"      # Index 0 → Ubuntu
echo "Second OS element: ${os_list[1]}"     # Index 1 → Kali

# Display all elements in the array
# ${array_name[*]} or ${array_name[@]} returns all elements
echo "Complete OS list: ${os_list[*]}"

################################################################################
# ARRAY BASICS:
#
# 1. ARRAY DECLARATION
#
#    Method 1: Explicit list
#    array=("value1" "value2" "value3")
#
#    Method 2: Individual assignment
#    array[0]="value1"
#    array[1]="value2"
#    array[2]="value3"
#
#    Method 3: With -a flag
#    declare -a array=("val1" "val2")
#
# 2. ACCESSING ARRAY ELEMENTS
#
#    Single element (0-indexed):
#    ${array[0]}         # First element
#    ${array[1]}         # Second element
#    ${array[-1]}        # Last element (bash 4.3+)
#    ${array[2]:0:2}     # Substring of element
#
#    All elements:
#    ${array[*]}         # All as single string: "val1 val2 val3"
#    ${array[@]}         # All as array: "val1" "val2" "val3"
#
#    Important difference:
#    echo "${array[*]}"  # Expands to: val1 val2 val3
#    echo "${array[@]}"  # Without quotes, same as ${array[*]}
#    echo "${array[@]}"  # With quotes, preserves array structure
#
# 3. ARRAY INFORMATION
#
#    Array length:
#    ${#array[@]}        # Number of elements
#    ${#array[0]}        # Length of first element string
#
#    Array indices:
#    ${!array[@]}        # List all indices
#
#    Example:
#    array=("a" "b" "c")
#    ${#array[@]}        # 3
#    ${!array[@]}        # 0 1 2
#
# 4. MODIFYING ARRAYS
#
#    Add element:
#    array+=("new")      # Append to end
#    array[5]="value"    # Assign to specific index
#
#    Replace element:
#    array[1]="new_val"  # Replace element at index 1
#
#    Remove element:
#    unset array[1]      # Unset specific element
#    unset array         # Delete entire array
#
# 5. ITERATING OVER ARRAYS
#
#    Using for loop:
#    for item in "${array[@]}"; do
#        echo "$item"
#    done
#
#    Using indices:
#    for i in "${!array[@]}"; do
#        echo "[$i]=${array[$i]}"
#    done
#
#    Using C-style:
#    for ((i=0; i<${#array[@]}; i++)); do
#        echo "${array[$i]}"
#    done
#
# 6. COMMON OPERATIONS
#
#    Slice (bash 4.0+):
#    ${array[@]:start:length}
#    ${array[@]:1:2}     # Elements from index 1, length 2
#
#    Join array to string:
#    IFS=", "; echo "${array[*]}"
#    Output: "val1, val2, val3"
#
#    Split string to array:
#    IFS=":" read -ra array <<< "$string"
#
# 7. IMPORTANT QUOTING
#
#    "${\array[*]}"      # Single string: "val1 val2 val3"
#    "${array[@]}"       # Array with spaces: "val1" "val2" "val3"
#    "${array[@]}"       # Best for iteration
#
#    Without quotes:
#    ${array[*]}         # Word splitting occurs
#    ${array[@]}         # Word splitting occurs
#
#    Always quote unless you need word splitting!
#
# 8. ASSOCIATIVE ARRAYS (Bash 4.0+)
#
#    Declare: declare -A map
#    Set:     map[key]="value"
#    Get:     ${map[key]}
#    All:     ${map[@]} or ${!map[@]}
#
#    Example:
#    declare -A colors
#    colors[red]="FF0000"
#    colors[green]="00FF00"
#    echo ${colors[red]}  # FF0000
################################################################################

# TRY THIS:
# 1. Add more elements to the array
# 2. Loop through array using for loop: for os in "${os_list[@]}"
# 3. Find array length: echo ${#os_list[@]}
# 4. Check specific index: if [ -n "${os_list[0]}" ]
# 5. Create an associative array with OS names as keys and versions as values
# 6. Print each element with its index
# 7. Add elements dynamically: os_list+=("NewOS")
# 8. Replace an element: os_list[1]="CentOS"

# EXAMPLE: Loop through array
# echo "Available Operating Systems:"
# for ((i=0; i<${#os_list[@]}; i++)); do
#     echo "  $((i+1)). ${os_list[$i]}"
# done
