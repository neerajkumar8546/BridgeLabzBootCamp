#!/bin/bash -x
read -p " enter first number : " x
if [ ${#x} -eq 4 ] && [ $(($x % 400)) -eq "0" ] || [ $(($x % 4)) -eq "0" ]; then 
		echo "Leap Year"
else
	echo "not leap Year"
fi 
