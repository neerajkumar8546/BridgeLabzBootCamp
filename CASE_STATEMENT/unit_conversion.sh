#!/bin/bash -x
read -p "Enter Number : " x
echo "Choose Option..."
echo " "
echo "Press 1 - Feet to Inch conversion "
echo "Press 2 - Inch to Feet conversion "
echo "Press 3 - Feet to Meter conversion "
echo "Press 4 - Meter to Feet conversion "
echo " "
read -p "Press Option ..." y
case "$y" in
   "1") 
		feettoinch=`echo "scale=2;$x*12" | bc -l` 
		echo "Feet to Inch : "$feettoinch
   ;;
   "2")
		 inchtofeet=`echo "scale=2;$x/12" | bc -l`
		 echo "Inch To Feet : "$inchtofeet
   ;;
   "3")
		 metertofeet=`echo "scale=2;$x/3.28" | bc -l`
		 echo "Meter to Feet : "$metertofeet
   ;;
   "4")
		 feettometer=`echo "scale=2;$x*304" | bc -l`
		 echo "Feet To Meter : "$feettometer
   ;;
   *) 
		echo "Invalid Input"
   ;;

esac
