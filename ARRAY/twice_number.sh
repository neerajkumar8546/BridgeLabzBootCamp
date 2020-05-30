#!/bin/bash -x

for (( i=0;i<=100;i++ ))
do
   num=$i
   rev=0
   if [ $i -gt 9 ]
   then
      while [ $num -gt 0 ]
      do
         rev=$((rev * 10 + $num%10))
         num=$(($num/10))
         if [ $i -eq $rev ]
         then
            printf $rev
            printf "\t"
         fi
      done
   fi
done