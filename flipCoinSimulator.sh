

#!/bin/bash


# UC1 Display heads or tails

value=$((RANDOM%2))
if [[ $value == 0 ]]
then
	echo "Heads"
else
	echo "Tails"
fi

#UC2 Flip Coin multiple times
count=0;
hcount=0
tcount=0;
while [ $count -ne 21 ]
do
	var=$((RANDOM%2))
	#echo $var

	if [[ $var -eq 1 ]]
	then
		echo "Heads"
		((hcount++))
	else

		echo "Tails"
		((tcount++))

	fi
	((count++))
done
echo "Head wins $hcount times"
echo "Tail wins $tcount times"
