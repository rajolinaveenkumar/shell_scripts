#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then
    echo "ERROR:: You must have sudo access to execute this script"
    exit 1 # other than 0
else 
    echo "Script name: $0 is executing....."
fi 

dnf list installed git

if [ $? -ne 0 ]
then # not installed
    dnf install mysql -y
    if [ $? -ne 0 ]
    then 
        echo "Installing MySQL ... FAILURE"
        exit 1
    else
        echo "Installing MySQL ... SUCCESS"
    fi
else
    echo "MySQL is already ... INSTALLED"
fi

# dnf install mysql -y
# if [ $? -ne 0 ]
# then 
#     echo "Installing MySQL ... FAILURE"
#     exit 1
# else
#     echo "Installing MySQL ... SUCCESS"
# fi

dnf list installed mysql

if [ $? -ne 0 ]
then # not installed
    dnf install git -y
    if [ $? -ne 0 ]
    then 
        echo "Installing git ... FAILURE"
        exit 1
    else
        echo "Installing git ... SUCCESS"
    fi
else    
    echo "git is already ... INSTALLED"
fi


# dnf install git -y

# if [ $? -ne 0 ]
# then
#     echo "Installing git ... FAILURE"
#     exit 1
# else
#     echo "Installing git ... SUCCESS"
# fi