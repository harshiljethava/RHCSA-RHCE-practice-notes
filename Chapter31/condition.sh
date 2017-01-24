#!/bin/sh
# Example of condition statement in bash scripting

echo -e "\nCheck whether you system user have mysql login privilegde"
echo -e "\nEnter user name"
read username
sys_user_flag= 0
mysql_user_flag= 0
echo -e "\n1 ) Check in /etc/passwd file "
echo -e "\n2 ) Check in mysql "
read option
case $option in
1)

sys_user=$(grep -l $username /etc/passwd)
if [[ $sys_user == "/etc/passwd" ]]; then
	echo -e "\nYeah ! /etc/passwd contains $username user"
	sys_user_flag= 1
elif [[ $sys_user != "/etc/passwd" ]]; then
	echo -e "\nUhh ! /etc/passwd does not contain $username user"
	sys_user_flag= 0
else
	echo -e "\nInvalid option"
fi;;
2)
	echo "Enter password for $username"
	mysql_user=$(mysql -u $username -p -e 'show databases';)

	echo $mysql_user
	echo "Done"
	
;;
esac
