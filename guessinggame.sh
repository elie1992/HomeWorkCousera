#!/usr/bin/env bash
echo "Guess how many files are in the current directory:"
read response
echo "You entered: $response"
count=$(ls | wc -l)
function retry
{
   echo "please retry:"
}

	while [[ $response -ne $count ]]
	do
	
		if [[ $response -lt $count ]]
		then 
			echo "your input is less than the number of files in the 
current directory"

		fi
		if [[ $response -gt $count ]]
		then
			echo "your input is greater than the number of files in 
the current directory"
		fi
		echo $(retry)
		read response
	done


if [[ $response -eq $count ]]
then
	echo "Congratulations!! your input is equal to the number of 
files in the current directory"

fi


