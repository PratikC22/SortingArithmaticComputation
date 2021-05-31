#! /bin/bash -x

declare -A Results	#Declaring Associative array/Dictionary

read -p "Enter 3 inputs a, b and c : " a b c;	#Taking 3 inputs


#Conditions 1 to 4:
condition1=$(( ( $b * $c ) + $a ));
condition2=$(( ( $a * $b ) + $c ));
condition3=$(( ( $a / $b ) + $c ));
condition4=$(( ( $a % $b ) + $c ));

#Storing results in an associative array:
Results["condition1"]=$condition1
Results["condition2"]=$condition2
Results["condition3"]=$condition3
Results["condition4"]=$condition4

#Displaying results from associative array:
echo "$a+$b*$c = ${Results[condition1]}";
echo "$a*$b+$c = ${Results[condition2]}";
echo "$c+$a/$b = ${Results[condition3]}";
echo "$a%$b+$c = ${Results[condition4]}";

