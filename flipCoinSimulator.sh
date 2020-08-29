

#!/bin/bash


# UC1 Display heads or tails

value=$((RANDOM%2))
if [[ $value == 0 ]]
then
	echo "Head"
else
	echo "Tail"
fi
