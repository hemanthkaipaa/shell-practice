#!/bin/bash
LOG_DIR=/var/log/shell-practice/
SCRIPT_FILE=$(echo $0 | cut -d "." -f1)
LOG_FILE=$LOG_DIR/$SCRIPT_FILE.log

echo "$SCRIPT_FILE"
mkdir -p $LOG_DIR

#Loops
PACKAGES=(mysql nginx nodejs)

VALIDATE_AND_INSTALL_PACKAGE(){
    dnf list installed $1 &>>$LOG_FILE
    local status=$?
    if [ $status == 0 ] ; then
        echo "module $1 already installed" | tee -a $LOG_FILE
    else 
        echo "Installing $1 module in progress" | tee -a $LOG_FILE
        dnf install $1 -y &>>$LOG_FILE
    fi
}

CHECK_ROOT_USER(){
    if [ $(id -u) == 0 ] ; then
        echo "Running as rootuser" | tee -a $LOG_FILE
    else 
        echo "your are not a rootuser, permission denied" | tee -a $LOG_FILE
        exit 1
    fi
}

CHECK_ROOT_USER

for i in "${PACKAGES[@]}" ; do
    VALIDATE_AND_INSTALL_PACKAGE $i
done

