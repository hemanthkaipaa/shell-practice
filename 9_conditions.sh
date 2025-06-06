#!/bin/bash

#conditions

if [ $1 -gt $2 ]; then
    echo "$1 is greater than $2"
else
    echo "$1 is not greater than $2"
fi

read input

if [ "$input" == "Hemanth" ]; then
    echo "Age is 31"
elif [ "$input" == "Loke" ]; then
    echo "Age is 28"
else
    echo "No input matched"
fi

echo "input name is $input"
