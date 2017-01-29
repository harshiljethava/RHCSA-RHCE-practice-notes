#/bin/bash
# Example of brace expansion in bash scripting

echo -e "\nThe number from 1 to 20 from brace expansion {1..20}"
echo {1..20}

echo -e "\nThe number from 1 to 20 from brace expansion zore-padded {01..20}"
echo {01..20}

echo -e "\nThe number from 1 to 20 from brace expansion double zero padded {001..20}"
echo {001..20}

echo -e "\nThe number from 1 to 20 from brace expansion {1..20} stepping by 2 {1..20..2}"
echo {1..20..2}


echo -e "\nThe number from 20 to  from brace expansion {20..1..-1}"
echo {20..1..-1}

echo -e "\n"
