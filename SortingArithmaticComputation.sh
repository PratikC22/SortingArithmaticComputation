#! /bin/bash -x

<<<<<<< HEAD
declare -A Results	#Declaring Dictionary
=======
>>>>>>> UC-7-DictToArray

read -p "Enter 3 inputs a, b and c : " a b c;	#Taking 3 inputs


<<<<<<< HEAD
#Conditions 1 to 4:
condition1=$(( ($b*$c)+$a ));
condition2=$(( ($a*$b)+$c ));
condition3=$(( ($a/$b)+$c ));
condition4=$(( ($a%$b)+$c ));

#Storing results in Dictionary:
=======
#Conditions 1 to 4 :
condition1=$(( ( $b * $c ) + $a ));
condition2=$(( ( $a * $b ) + $c ));
condition3=$(( ( $a / $b ) + $c ));
condition4=$(( ( $a % $b ) + $c ));

#Storing results in a Dictionary :
>>>>>>> UC-7-DictToArray
Results["condition1"]=$condition1
Results["condition2"]=$condition2
Results["condition3"]=$condition3
Results["condition4"]=$condition4

<<<<<<< HEAD
#Displaying results from Dictionary:
echo "$a+$b*$c = ${Results[condition1]}";
echo "$a*$b+$c = ${Results[condition2]}";
echo "$c+$a/$b = ${Results[condition3]}";
echo "$a%$b+$c = ${Results[condition4]}";
=======
#Displaying results from Dictionary :
echo "Results of all computations : " ${Results[@]}
>>>>>>> UC-7-DictToArray

#Dictionary to array :
Array=(${Results[@]})
echo ${Array[*]}
