#!/bin/bash
counter=0
#to find factors of a number
read -p "Enter Number : " num
printf "\n"
for (( i=2; i<=$num; i++ ));
do
    while [ $(($num%$i)) == 0 ];
    do
        #printf $i"\t"
        array[ (( counter++ )) ]=$i
         num=$(($num/$i))
    done
done
echo "Prime Factors of a number n into an array and finally display the output."
printf "\n"
echo ${array[@]}