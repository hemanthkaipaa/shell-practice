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


INSTALL_APP=$1
if [[ "$1" == "" ]];then
    INSTALL_APP="mysql"
fi

dnf list installed $INSTALL_APP

if [ $? == 0 ];then
    echo "$INSTALL_APP already installed"
    exit 0
else 
    dnf install $INSTALL_APP -y
    echo "installing $INSTALL_APP in progress "
    if [ $? == 0 ]; then
        echo "$INSTALL_APP installed successfully with status $?"
    else 
        echo "$INSTALL_APP installation failed with status $?"
    fi
fi


