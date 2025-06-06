#!/bin/bash

#conditions

if [ $1 -gt $2 ]; then
    echo "$1 is greater than $2"
else
    echo "$1 is not greater than $2"
fi

read input

if [ $input -eq "Hemanth" ]; then
    echo "Age is 31"
else [ $input -eq "Loke" ]; then
    echo "Age is 28"
fi

echo "input name is $input"
