#!/bin/bash
# Simple Interest Calculator
# Computes simple interest from principal, rate of interest and time period.
# Formula: SI = (P * R * T) / 100

echo "Enter the principal:"
read -r p
echo "Enter rate of interest per year:"
read -r r
echo "Enter time period in years:"
read -r t

# Check that every input is a positive number (integer or decimal)
for value in "$p" "$r" "$t"; do
    if ! [[ $value =~ ^[0-9]+([.][0-9]+)?$ ]]; then
        echo "Error: '$value' is not a valid positive number."
        exit 1
    fi
done

s=$(awk -v p="$p" -v r="$r" -v t="$t" 'BEGIN { printf "%.2f", (p * r * t) / 100 }')
total=$(awk -v p="$p" -v s="$s" 'BEGIN { printf "%.2f", p + s }')

echo "The simple interest is: $s"
echo "The total amount is: $total"
