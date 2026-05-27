#!/bin/bash

# Input dimensions
read -p "Enter number of rows: " rows
read -p "Enter number of columns: " cols

# Declare associative or flat arrays for the matrices
declare -a matrixA
declare -a matrixB
declare -a matrixSum

echo "--- Enter elements for Matrix A ---"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        read -p "Element [$i][$j]: " val
        # Calculate flat index: (i * cols) + j
        idx=$((i * cols + j))
        matrixA[$idx]=$val
    done
done

echo "--- Enter elements for Matrix B ---"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        read -p "Element [$i][$j]: " val
        idx=$((i * cols + j))
        matrixB[$idx]=$val
    done
done

# Perform Matrix Addition
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        idx=$((i * cols + j))
        # Sum corresponding elements
        matrixSum[$idx]=$((matrixA[$idx] + matrixB[$idx]))
    done
done

# Display the Result
echo "-----------------------------------"
echo "Resultant Matrix (A + B):"
echo "-----------------------------------"
for ((i=0; i<rows; i++)); do
    for ((j=0; j<cols; j++)); do
        idx=$((i * cols + j))
        # Print element followed by a tab
        echo -ne "${matrixSum[$idx]}\t"
    done
    echo "" # Newline after each row
done