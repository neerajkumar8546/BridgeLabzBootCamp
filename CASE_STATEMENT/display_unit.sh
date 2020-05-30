#!/bin/bash -x
read -p "Enter Single Digit Number : " x

case "$x" in
   "1") echo "Ones"
   ;;
   "10") echo "Tens"
   ;;
   "100") echo "Hundreds"
   ;;
   "1000") echo "Thousands"
   ;;
   "10000") echo "Tens of Thousands"
   ;;
   "100000") echo "Hundreds of Thousands"
   ;;
   *) echo "Invalid Input"
   ;;

esac
