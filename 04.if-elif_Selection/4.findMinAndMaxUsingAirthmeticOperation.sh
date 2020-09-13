#!/bin/bash
echo -n "Enter three numbers for your arithmetic operations with space in between ur numbers : "
read a b c
res1=$(( $a + $b * $c ))
res2=$(( $a % $b + $c ))
res3=$(( $c + $a / $b ))
res4=$(( $a * $b + $c ))
array=($res1 $res2 $res3 $res4)
max=${array[0]}
min=${array[0]}
for i in "${array[@]}"
do
    if [[ "$i" -gt "$max" ]]; then
        max="$i"
    elif [[ "$i" -lt "$min" ]]; then
        min="$i"
	fi
done
echo "Maximum is : $max"
echo "Minimum is : $min"