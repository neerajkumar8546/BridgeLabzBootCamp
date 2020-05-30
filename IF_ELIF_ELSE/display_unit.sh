read -p "Enter single digit number : " x
if [ $x -eq 1 ]; then
        echo "Ones"
elif [ $x -eq 10 ]; then
        echo "Tens"
elif [ $x -eq 100 ]; then
        echo "Hundreds"
elif [ $x -eq 1000 ]; then
        echo "Thousands"
elif [ $x -eq 10000 ]; then
        echo "Tens of Thousands"
elif [ $x -eq 100000 ]; then
        echo "Hundreds of Thousands"
else
        echo "Plz Enter valid Number..."
fi
