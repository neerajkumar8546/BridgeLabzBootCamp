#!/bin/bash -x
num1=$((RANDOM%6+1))
num2=$((RANDOM%6+1))

sum=$(($num1+$num2))
echo "Sum : "$sum