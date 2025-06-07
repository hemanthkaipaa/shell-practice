#!/bin/bash
LOG_DIR=/var/log/shell-practice/
SCRIPT_FILE=$(echo $0 | cut -d "." -f1)
LOG_FILE=$LOG_DIR/$SCRIPT_FILE.log

echo "$SCRIPT_FILE"
mkdir -p $LOG_DIR
#Loops
APPS_TO_INSTALL=(mysql nginx nodejs)
for i in "${APPS_TO_INSTALL[@]}" ; do
    echo -e "\e[32m $i" | tee -a $LOG_FILE
done

