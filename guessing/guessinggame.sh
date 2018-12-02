#!usr/bin/env bash
# File: guessinggame.sh

function end_of_program {
    echo "Your guess is correct! Congratulations!"
}

echo "How many files are in this directory? Put a number:"
read guess
files_number="$(ls | wc -l)"

while [[ $guess -ne $files_number ]]; do

    if [[ $guess -gt $files_number ]]; then
	echo "Too high! Try again:"
	read guess
    else
	echo "Too low! Try again:"
	read guess
    fi

done

end_of_program
