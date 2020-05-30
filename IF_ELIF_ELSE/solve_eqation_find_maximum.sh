#!/bin/bash -x

echo "float value only consider as mobaxterm "

read -p "Enter First Number :"a
read -p "Enter Second Number :"b
read -p "Enter Third Number :"c
eqa=`echo "scale=2;$(($a+$b+$c))" | bc -l`
echo "A- (a+b*c) : " $eqa
eqa2=`echo "scale=2;$(($c+$a/$b))" | bc -l`
echo "B- (c+a/b) : " $eqa2
eqa3=`echo "scale=2;$(($a%$b+$c))" | bc -l`
echo "C- (a%b+c) : " $eqa3
eqa4=`echo "scale=2;$(($a*$b+$c))" | bc -l`
echo "D- (a*b+c) : " $eqa4

if [ $eqa -gt $eqa2 ] && [ $eqa -gt $eqa3 ] && [ $eqa -gt $eqa4 ];then
	echo "Maximum number is : " $eqa
elif [ $eqa2 -gt $eqa ] && [ $eqa2 -gt $eqa3 ] && [ $eqa2 -gt $eqa4 ];then
   echo "Maximum number is : " $eqa2
elif [ $eqa3 -gt $eqa ] && [ $eqa3 -gt $eqa2 ] && [ $eqa3 -gt $eqa4 ];then
   echo "Maximum number is : " $eqa3
else
	echo "Maximum Number is : " $eqa4
fi


if [ $eqa -lt $eqa2 ] && [ $eqa -lt $eqa3 ] && [ $eqa -lt $eqa4 ];then
	echo "Minimum Number is : "$eqa
elif [ $eqa2 -lt $eqa ] && [ $eqa2 -lt $eqa3 ] && [ $eqa2 -lt $eqa4 ];then
   echo "Minimum Number is : "$eqa2
elif [ $eqa3 -lt $eqa ] && [ $eqa3 -lt $eqa2 ] && [ $eqa3 -lt $eqa4 ];then
   echo "Minimum Number is : "$eqa3
else
	echo "Minimum number is : "$eqa4
fi