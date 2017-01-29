#!/bin/sh
# demostrate associate array in bash scripting

declare -A certificate
certificate[rhcsa]='Redhat_Certified_System_Administration'
certificate[mcsa]='Microsoft_Certified_Solution_Associate'
certificate[ccna]='Cicso_Certified_Network_Associate'

echo -e "\n=>certificate array contain following values\n"
echo "rhcsa key contains : "${certificate[rhcsa]}
echo "mcsa key contains : "${certificate[mcsa]}
echo "ccna key contains : "${certificate[ccna]}

echo -e "\nPrinting keys of certificate array through for loop\n"
for key in ${!certificate[*]};
do 
	echo -e "\n$key"
done

echo -e "\nPrinting value of certificate array through for loop\n"
for value in ${certificate[*]};
do 
	echo  "$value"
done
