#!/bin/bash -x
read -p "Enter day : " x
read -p "Enter Months in number : " y
if [ $y -eq 3 ] && [ $x -ge 20 ] && [ $x -le 31 ]; then
	echo "True"
fi
if [ $y -eq 4 ] && [ $x -ge 20 ] && [ $x -le 30 ]; then
        echo "True"
fi
if [ $y -eq 5 ] && [ $x -ge 20 ] && [ $x -le 31 ]; then
        echo "True"
fi
if [ $y -eq 6 ] && [ $x -ge 20 ] && [ $x -le 30 ]; then
        echo "True"
fi

