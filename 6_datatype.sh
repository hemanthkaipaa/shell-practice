#!/bin/bash



NUM1=100
NUM2=200

FLOAT1=14.3
NUM3=20

NAME=HEMANTH
LASTNAME=KAIPA

DECIMAL=$(echo "scale=1; $FLOAT1 + $NUM3" | bc)  # we can use awk command or echo ing and piping to bc(Basic calculator)
REALNUMS=$((NUM1+NUM2)) # $(()) only used for Arithmetic operations with natural numbers, floating doesn't support this.
COMPLETENAME=$($NAME$LASTNAME) # JUST COMBINE THE VARS TO CONCATINATE


echo "sum of float and integer = $DECIMAL"

echo "Sum of two real numbers are $REALNUMS"

echo "Full Name : $COMPLETENAME"





