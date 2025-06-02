#!/bin/bash
num=20

if [ $num -gt 100 ]; then
    echo "Greater than 100"
elif [ $num -gt 50 ]; then
    echo "Greater than 50"
else
    echo "50 or less"
fi
