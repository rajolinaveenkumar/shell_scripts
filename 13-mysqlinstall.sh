#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1
else 
    echo "Script name: $0 is executing"
fi 