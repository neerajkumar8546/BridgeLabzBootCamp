#!/bin/bash -x
#only float value work on mobaxterm
# 1:- feet=12 in then 42in =?ft
echo "1:- feet=12 in then 42in =?ft"
printf "\n"
convertToFeet=`echo "scale=2;42/12" | bc -l`
echo "42 inch = " $convertToFeet
printf "\n"

echo "2:- Rectangular plot of 60 feet * 40 feet in meters"
conertInchToMeter=`echo "scale=2;2400*0.304" | bc -l`
echo "Rectangular plot of 60 feet * 40 feet in meters : " $convetInchToMeter

echo "3:- Calculate area of 25 such plots in acres :-"
printf "\n"
#1 acres=100 deshmil
acres=100
calPlots=$(($acres/25))
echo "Calculate area of 25 such plots in acres : " $calPlots "dishmil"