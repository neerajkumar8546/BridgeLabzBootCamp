echo "Single Digit Number to word convert.."
read -p "Enter single digit number : " x
printf "\n"
if [ $x -eq 0 ]; then
	echo "Zero"
elif [ $x -eq 1 ]; then 
	echo "One"
elif [ $x -eq 2 ]; then
        echo "Two"
elif [ $x -eq 3 ]; then
        echo "Three"
elif [ $x -eq 4 ]; then
        echo "Four"
elif [ $x -eq 5 ]; then
        echo "Five"
elif [ $x -eq 6 ]; then
        echo "Six"
elif [ $x -eq 7 ]; then
        echo "Seven"
elif [ $x -eq 8 ]; then
        echo "Eight"
elif [ $x -eq 9 ]; then
        echo "Nine"
else
	echo "Plz Enter Single digit Number..."
fi