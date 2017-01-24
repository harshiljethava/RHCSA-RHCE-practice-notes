#!/bin/sh
# Example of function in bash scripting

InstallMysql()
{
	yum install mysql-client mysql-server
}
InstallApache()
{
	yum install httpd
}
InstallPhp()
{
	yum install php php-mysql
}

echo -e "\nPlease select option"
echo -e "\n1 ) Install mariadb"
echo -e "\n2 ) Install Apache "
echo -e "\n3 ) Install Php "
echo -e "\n9 ) Install LAMP (all)"
read option
if [[ $option == 1 ]];then
	echo -e "\nInstalling mariadb..."
	InstallMysql
elif [[ $option == 2 ]];then
	echo -e "\nInstalling apache2..."
	InstallApache
elif [[ $option == 3 ]]; then
	echo -e "\nInstalling php..."
	InstallPhp
elif [[ $option == 9 ]]; then
	echo -e "\nInstalling LAMP (all)..."
	InstallMysql
	InstallApache
	InstallPhp
else
	echo "Invalid option"
fi

