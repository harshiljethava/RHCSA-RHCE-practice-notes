#!/bin/sh
echo -e "\n\tEnter which word you want to search in awk_test.txt file"
read word
awk "/$word/" awk_test.txt

echo -e "\n\t==: Printing match count "
awk "/$word/{++count}"'END {print "Count = ",count}' awk_test.txt

echo -e "\n\t==: Printing line more than n characters\n"
echo -e "Enter your n \n"
read n 
awk 'length($0) >'" $n " awk_test.txt 

echo -e "\n==: Use of  ENVIRON variable"
awk 'BEGIN {print ENVIRON["USER"]}'

echo -e "\n==: Use of  FILENAME variable"
awk 'END {print FILENAME}' awk_test.txt
