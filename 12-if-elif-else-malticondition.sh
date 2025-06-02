#!/bin/bash
num=69

if [ $num -gt 100 ]; then
    echo "Greater than 100"
elif [ $num -gt 50 ]; then
    echo "Greater than 50"
else
    echo "number is 50 or less"
fi
