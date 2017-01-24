#!/bin/sh
# Example of for loop in bash scripting

echo -e "\nPlease select options"
echo -e "\n1 ) create n number of file(s)"
echo -e "\n2 ) create n numer of directory(s) with sub"
read option
if [[ $option == 1 ]]; then
	echo -e "\nHow many files you want to create ?"
	read n
	echo -e "\nPlease enter word you can append in filename "
	read word
	for ((i=1; i<=n; i++))do
		touch /home/$i$word;
	done
elif [[ $option == 2 ]]; then
	echo -e "\nHow many sub directory you want to create ?"
	read n
	echo -e "Enter keyword to add in directory"
	read keyword

	for ((i=1; i<=n; i++))do
		sub= "/$i"
		for ((j=1 ; j<=i; i++)) do
			mkdir -p $keyword$i

		done
	done
else 
	echo -e "\nInvalid option"
fi
