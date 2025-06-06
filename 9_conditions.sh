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

echo "-----------------------------------------------"

echo "calculator using switch / case in shell"


echo "Enter numbers between 1 to 3 for Addition , Substraction, Multiplication"
read NUM1
echo "Enter input1"
read input1
echo "Enter input2"
read input2

case $NUM1 in
    1) echo "SUM OF TWO NUMBERS = $(( $input1 + $input2 ))" ;;
    2) echo "SUB OF TWO NUMBERS = $(( $input1 - $input2 ))" ;;
    3) echo "MUL OF TWO NUMBER = $(( $input1 * $input2 ))" ;;
esac
