#!/bin/bash

echo "show all variables passed to the script : $@"
echo "show number of variables passed to the script : $#"
echo "Display script file name : $0"
echo "present working directory : $pwd"
echo "home directory of the user : $HOME"
echo "current user running the script : $USER"
echo "PID of the current script :  $$"
echo "PID of the last command in background :  $!"
echo "exit status of the last command : $?"