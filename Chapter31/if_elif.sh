#!/bin/sh
# Example of if elif statment in bash scripting

echo -e "\nSelect your options"
echo -e "\n1 ) Save ping result in /home/pingresult.txt "
echo -e "\n2 ) Find file of particular type "
read option
if [[ $option == 1 ]]; then
	echo -e "\nEnter IP address "
	read ip
	echo "Pinging to $ip and saving data to /home/pingresult.txt ..."
	ping -c 4 $ip >> /home/pingresult.txt
	echo -e "\nDone"
elif [[ $option == 2 ]]; then
	echo -e "\nEnter filename you want to search"
	read filename
	echo -e "\nFinding you $filename ..."
	locate  $filename
fi
