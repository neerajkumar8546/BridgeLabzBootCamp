#!/bin/bash -x
#1=head  & 0=tail
echo "1 = Head and 0 = Tail"
FLIP=$(($RANDOM%2))
echo $FLIP
if [ $FLIP -eq 1 ]
then
	echo "Heads"
else
	echo "Tails"
fi
