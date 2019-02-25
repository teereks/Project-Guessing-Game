#!/usr/bin/env bash
# File: guessinggame.sh

function ask() {
	echo "Type your guess"
	read guess
	echo $guess
}

answer=$(ls -1 | wc -l)
guess=-1
echo "Quess how many files are in the current directory?"

while [ "$guess" != "$answer" ]; do
	ask

	if [ "$guess" -gt "$answer" ]; then
		echo "Too high"

	elif [ "$guess" -lt "$answer" ]; then
                echo "Too low"
	else
		echo "Congratulations, you got it!"
	fi
done
