#!/bin/bash

# This script calculates simple interest.

# Input values
principal=$1
rate=$2
time=$3

# Check if all three arguments are provided
if [ $# -ne 3 ]; then
    echo "Usage: $0 <principal> <rate> <time>"
    exit 1
fi

# Calculate simple interest
interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)

# Display the result
echo "Principal: $principal"
echo "Rate: $rate%"
echo "Time (in years): $time"
echo "Simple Interest: $interest"
