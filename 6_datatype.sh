#!/bin/bash

# by default shell allocate datatype based on assignment

NUM1=100
NUM2=200

FLOAT1=14.3
NUM3=20

NAME=HEMANTH
LASTNAME=KAIPA

#DECIMAL=$((FLOAT1+NUM3))
REALNUMS=$((NUM1+NUM2))
COMPLETENAME=$((NAME+LASTNAME))


echo "sum of float and integer = $DECIMAL"

echo "Sum of two real numbers are $REALNUMS"

echo "Full Name : $COMPLETENAME"





