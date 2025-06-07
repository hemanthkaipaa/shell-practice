#!/bin/bash

#colors
R="\e[31m"
G="\e[32m"
Y="\e[33m"
B="\e[34m"
N="\e[0m"

#Re usable functions

VALIDATE_ROOT_USER(){
    if [ "$(id -u)" == 0 ]; then
        echo -e "$G Running as a root user $N"
    else
        echo -e "$R failed to proceed not a root user $N"
        exit 1
    fi
}

VALIDATE_APP_EXIST(){
    dnf list installed $1
}

# 1 = app name
VALIDATE_STATUS(){
    if [ $? == 0 ]; then
        echo -e "$R  Error $N : $Y "$1" $N App already installed"
        exit 1
    else 
        echo -e "$Y "$1" $N $G Install in in progress..$N"
    fi
}

#function to install app
INSTALL_APP(){
    dnf install $1 -y
}


VALIDATE_APP_INSTALL_STATUS(){
    if [ $? == 0 ]; then
        echo -e "$Y "$1" $N $G Install successful$N"
        exit 1
    else 
         echo -e "$R  Error $N : $Y "$1" $N App Install failed"
    fi
}

