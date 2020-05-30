#!/bin/bash -x
counter=0
for (( i=1;i<=10;i++ ))
do
      array[ (( counter++ )) ]=$((RANDOM%100+100))
done
printf "\n"
echo "Original Array : "
printf "\n"
echo ${array[@]}

#sort array
for (( i=0;i<10;i++ ))
do
   for (( j=0;j<10-$i-1;j++ ))
   do
      if [ "${array[j]}" -gt "${array[$((j+1))]}" ]
      then
         #swap
         temp=${array[j]}
         array[j]=${array[$((j+1))]}
         array[$((j+1))]=$temp
      fi
   done
done
printf "\n"
echo "Sorted Array : "
printf "\n"
echo ${array[*]}
printf "\n"

echo "Second Largest element : " ${array[8]}
printf "\n"
echo "Second Smallest element : " ${array[1]}