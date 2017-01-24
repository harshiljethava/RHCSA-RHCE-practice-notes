#!/bin/sh
# Example of arithmetic expression in bash scripting

echo "Enter any intger value"
read n1
echo "Enter intger value again"
read n2
echo 'value of $(($n1+$n2)) :'$(($n1+$n2))  
echo 'value of $(($n1$n2))  : '$(($n1$n2))

echo 'storing value of $(($n1+$n2)) in variable n3'
n3=$(($n1+$n2))
echo $n3

echo "value of n3 after ((n3++)) " 
((n3++))
echo $n3
