#!/bin/bash
# Example of array in bash scripting

echo -e"\nEnter 3 different name to store in array"
declare -a array
read user1;
echo $user1
read user2;
echo $user2
read user3;
echo $user3
array=($user1 $user2 $user3 )
echo 'your name of array : ' ${array[@]}
echo "enter 2 new name to add in array"
read newuser1
read newuser2
array+=($newuser1 $newuser2)
echo "new array : " ${array[@]}
echo -e "\n\nPrinting value of array "
for i in ${array[@]};
do
	echo -e "\n" $i
done

