#! /bin/bash -x


read -p "Enter 3 inputs a, b and c : " a b c;	#Taking 3 inputs


#Conditions 1 to 4 :
condition1=$(( ( $b * $c ) + $a ));
condition2=$(( ( $a * $b ) + $c ));
condition3=$(( ( $a / $b ) + $c ));
condition4=$(( ( $a % $b ) + $c ));

#Storing results in a Dictionary :
Results["condition1"]=$condition1
Results["condition2"]=$condition2
Results["condition3"]=$condition3
Results["condition4"]=$condition4

#Displaying results from Dictionary :
echo "Results of all computations : " ${Results[@]}

#Dictionary to array :
Array=(${Results[@]})
echo ${Array[*]}
