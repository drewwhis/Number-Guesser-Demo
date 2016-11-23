#!/bin/bash

# NumberGuesser.bash

# A program that guesses a players number.
# A player guesses a number between 1 and 100 inclusive.
# If the computer's guess is too high, the user should enter H.
# If the computer's guess is too low, the user should enter L.

# Otherwise, the user should enter E.
#

clear
answer=" "
low=1
high=100
count=1
let "mid=$low+$high"
mid=$(($mid / 2))

echo -n "Think of a number between 1 and 100, then press Enter."
read -e answer

while [ "$answer" != "e" ] && [ "$answer" != "E" ]
do
	echo
	echo "Is your number $mid?"
	echo -n "Enter H if your number is higher, L if your number is lower, or E if your number is equal: "
	read -e answer

	if [ "$answer" == "h" ] || [ "$answer" == "H" ]
	then
		low=$(($mid))
	elif [ "$answer" == "l" ] || [ "$answer" == "L" ]
	then
		high=$(($mid))
	else
		continue
	fi

	let "mid=$low+$high"
	mid=$(($mid / 2))
	((count++))
done

echo
if [ "$count" > 1 ]
then
	echo "Guessed the answer in $count guesses!"
else
	echo "Guessed the answer in 1 guess!"
fi
echo "Run the program again to play again."