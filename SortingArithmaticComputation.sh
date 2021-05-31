#! /bin/bash -x

read -p "Enter 3 inputs a, b and c : " a b c;
condition1=$(( ( $b * $c ) + $a ))
echo "$a+$b*$c = $condition1"
