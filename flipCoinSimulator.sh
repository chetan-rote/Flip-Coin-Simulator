

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

#UC3 Flip coin till one of them wins 21 times
hcount=0
tcount=0

while [[ ($hcount -lt 21) && ($tcount -lt 21) ]]
do
	randomCheck=$(( RANDOM%2 ))
	if [[ $randomCheck == 0 ]]
	then
		#echo "Head"
		((hcount++));
	else
		#echo "Tail"
		((tcount++));
	fi
done

echo "head count is: $hcount"
echo "tail count is: $tcount"

if [[ $hcount -eq 21 ]]
then
	echo "Head wins first"
	echo "$hcount times Head is winner"
elif [[ $tcount -eq 21 ]]
then
	echo "Tail wins first"
	echo "$tcount times Tail is winner"
else
	echo "match is tie"
fi
