#!/bin/bash -x
counter=0

      array[ (( counter++ )) ]="0";
      array[ (( counter++ )) ]="-1";
      array[ (( counter++ )) ]="2";
      array[ (( counter++ )) ]="-3";
      array[ (( counter++ )) ]="1";

echo ${array[@]}
printf "\n"
   for (( i=0;i<3;i++ ))
   do
      for (( j=$i+1;j<4;j++ ))
      do
         for (( k=$j+1;k<5;k++ ))
         do
            if [ $((array[i]+array[j]+array[k])) -eq 0 ]
            then
               echo ${array[i]}
               echo ${array[j]}
               echo ${array[k]}
               sum=0
            fi
         done
         printf "\n"
      done
done

echo "Sum is : "$sum