#!/bin/bash

USERID=$(id -u)

echo "$USERID";

if [ $USERID == 0 ]; then
    echo "you are running with root user"
else 
    echo "you dont have root access"
    exit 1
fi

echo "exit status $? "

dnf install mysql -y

if [$? == 0]; then
    echo "mysql installed successfully with status $?"
else 
    echo "mysql installation failed with status $?"
    
