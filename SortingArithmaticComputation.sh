#! /bin/bash -x

read -p "Enter 3 inputs a, b and c : " a b c;

condition1=$(( ( $b * $c ) + $a ));
condition2=$(( ( $a * $b ) + $c ));
condition3=$(( ( $a / $b ) + $c ));

echo "$a+$b*$c = $condition1";
echo "$a*$b+$c = $condition2";
echo "$c+$a/$b = $condition3";
