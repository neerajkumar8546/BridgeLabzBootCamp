#!/bin/bash -x

rand1=$((RANDOM%100))
rand2=$((RANDOM%100))
rand3=$((RANDOM%100))
rand4=$((RANDOM%100))
rand5=$((RANDOM%100))

echo "Number are : " $rand1 " " $rand2 " " $rand3 " " $rand4 " " $rand5

sum=$(($rand1+$rand2+$rand3+$rand4+$rand5))
echo "Sum is: " $sum
printf "\n"

avg=$(($sum/5))
echo "Average is : " $avg