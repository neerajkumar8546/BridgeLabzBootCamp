#!/bin/bash -x

counter=0
for (( i=1;i<=10;i++ ))
do
      array[ (( counter++ )) ]=$((RANDOM%100+100))
done

#find second largest number

if [ "${array[0]}" -gt "${array[1]}" ]
then
      largest=${array[0]}
      second=${array[1]}
else
      largest=${array[1]}
      second=${array[0]}
fi

for (( loop=2;loop<10;loop++ ))
do
   if [ $largest -lt "${array[loop]}" ]
   then
         second=$largest
         largest=${array[loop]}
   elif [ $second -lt "${array[loop]}" ]
   then
         second=${array[loop]}
   fi
done
#find second smallest number
small=${array[0]}
ssmall=${array[0]}
for (( i=0;i<10;i++ ))
do
   if [ $small -gt "${array[i]}" ]
   then
         ssmall=$small
         small=${array[i]}
   elif [ $ssmall -gt "${array[i]}" ]
   then
         ssmall="${array[i]}"
   fi
done

echo ${array[@]}
printf "\n"

echo "second lorgest number : "$second

printf "\n"
echo "Second smallest number : "$ssmall