#!/bin/bash -x

function cal_degF()
{
   degF=$(($1*(9/5)+32))
   printf $degF
}
function cal_degC()
{
   degC=$(($1-32*(5/9)))
   printf $degC
}




read -p "Enter degC value : " a
read -p "Enter degF value : " b

echo "select below number 1 or 2 :"
echo "degF=(degC*9/5)+32"
echo "degC=(degF-32)*5/9"
read -p "Enter number 1 or 2 :" n
case "$n" in
	"1")
		result="$( cal_degF $a )"
		printf $result
	;;
	"2")
		result2="$( cal_degC $b )"
		printf $result2
	;;
	*)
	echo ""
	;;
esac