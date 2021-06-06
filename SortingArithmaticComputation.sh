#! /bin/bash -x

read -p "Enter 3 inputs a, b and c : " a b c;   #Taking 3 inputs

#Conditions 1 to 4:
condition1=$(( ($b*$c)+$a ));
condition2=$(( ($a*$b)+$c ));
condition3=$(( ($a/$b)+$c ));
condition4=$(( ($a%$b)+$c ));

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

#Sorting in Descending order :
for (( i=0;i<${#Array[@]};i++ ))
do
	for (( j=0;j<${#Array[@]};j++ ))
	do
	if [ ${Array[i]} -gt ${Array[j]} ]
	then
	temp=${Array[i]}
	Array[i]=${Array[j]}
	Array[j]=$temp
	fi
	done
done
echo "Descending Order : " ${Array[@]}
