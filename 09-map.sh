#!/bin/bash

# Declare an associative array (map)
declare -A employee

# Add key-value pairs
employee[Name]="Naveen"
employee[ID]="3437"
employee[Role]="DevOps Engineer"
employee[Location]="Bangalore"

# Access individual values
echo "Name     : ${employee[Name]}"
echo "ID       : ${employee[ID]}"
echo "Role     : ${employee[Role]}"
echo "Location : ${employee[Location]}"

# Print all keys
echo -e "\nAll keys:"
for key in "${!employee[@]}"; do
    echo "$key"
done

# Print all key-value pairs
echo -e "\nAll key-value pairs:"
for key in "${!employee[@]}"; do
    echo "$key : ${employee[$key]}"
done
