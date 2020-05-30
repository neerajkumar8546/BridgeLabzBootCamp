#!/bin/bash

jobType=$((RANDOM%3))
case $jobType in
		1)
			empHours=8;;
		2)
			empHours=4;;
		*)
			empHours=0;;
esac
echo $empHours;
