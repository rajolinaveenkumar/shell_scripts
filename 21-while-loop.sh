#!/bin/bash
file="/home/ec2-user/shell_scripts/07-arrays.sh"

while read -r line
do
    echo $line
done < $file