#!/bin/bash -x
s=0
function check_palindrome()
{
   #echo $1
   num=$1
   rev=""
   while [ $num -gt 0 ]
   do
       # Get Remainder
       s=$(( $num % 10 ))

      # Get next digit
      num=$(( $num / 10 ))

      # Store previous number and
      # current digit in reverse
      rev=$( echo ${rev}${s} )
      
if [ $num -eq $rev ]
      then
         echo "Number is Palindrome"
      else
         echo "Number is not palindrome"
fi


   done
}