#!/bin/bash

ispresentfulltime=1
ispresentparttime=2
wageperhour=20
totalworkingdays=0
totalworkinghours=0

function getworkhours() {
            case $1 in
                $ispresentfulltime )
                   emphrs=8;;
                $ispresentparttime )
                   emphrs=4;;
                *)
                   emphrs=0;;
            esac
	    echo $emphrs
}
while [[ $totalworkinghours -lt 51  && $totalworkingdays -lt 20 ]]
do
	(( totalworkingdays++ ))
        emphrs="$( getworkhours $((RANDOM%3)) )"
	totalworkinghours=`echo $totalworkinghours +$emphrs|bc`
        salary=`echo $emphrs *$wageperhour|bc`
        echo $salary
done
        totalmonthsalary=`echo $totalworkinghours *$wageperhour|bc`
        echo 'The salary for month is : ' $totalmonthsalary

