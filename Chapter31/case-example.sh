#!/bin/sh
echo -e "\nExample of case statment in bash scripting"
echo -e "\nPlease select your options :"
echo -e "1 ) update yum "
echo -e "2 ) update database "
read option 
case $option in 
1) echo -e "\nUpdating yum ... "; yum update ;;
2) echo -e "\nUpdating database ..."; updatedb;;
*) echo -e "\nInvalid options ";;
esac 
