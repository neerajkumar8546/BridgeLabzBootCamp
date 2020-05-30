#!/bin/bash

ispresentfulltime=1
ispresentparttime=2
wageperhour=20
totalworkingdays=0

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
while [[ $totalworkingdays -lt 20 ]]
do
	(( totalworkingdays++ ))
        emphrs="$( getworkhours $((RANDOM%3)) )"
        salary=`echo $emphrs *$wageperhour|bc`
	totalsalary=$((totalsalary+salary))
        echo $salary
done
        echo 'The salary for month is : ' $totalsalary
