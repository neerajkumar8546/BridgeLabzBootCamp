#! /bin/bash

attendance=$((RANDOM%2))

if [ $attendance -eq 1 ]
then
	echo "present"
else
	echo "absent"
fi
