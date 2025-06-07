#!/bin/bash
LOG=/var/log/shell-practice/log.txt
mkdir -p $LOG
#Loops
APPS_TO_INSTALL=(mysql nginx nodejs)
for i in $APPS_TO_INSTALL ; do
    echo -e "\e[32m $i"
done

