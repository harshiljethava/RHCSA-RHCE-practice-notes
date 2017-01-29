#!/bin/sh
# Example of eval and bash command executing inside shell script

echo "Enter user to see him/her home directory"
read user
cd /
homecom= cd /home/$user
eval $homecom
echo "You are home directory of $user"
echo -e 'pwd : ' 
eval pwd

