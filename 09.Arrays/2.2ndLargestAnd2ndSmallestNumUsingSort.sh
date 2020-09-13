#!/bin/bash
clear
sort () {
    for ((i=0; i <= $((${#arr[@]} - 2)); ++i))
    do
        for ((j=((i + 1)); j <= ((${#arr[@]} - 1)); ++j))
        do
            if [[ ${arr[i]} -gt ${arr[j]} ]]
            then
                # echo $i $j ${arr[i]} ${arr[j]}
                tmp=${arr[i]}
                arr[i]=${arr[j]}
                arr[j]=$tmp
            fi
        done
    done
}
arr=($(for i in {0..9}; do echo $(shuf -i 100-999 -n1); done))
echo "Unsorted array : ${arr[@]}"
sort ${arr[@]}
echo "Sorted array   : ${arr[@]}"
echo "Second Largest number  : ${arr[8]}"
echo "Second Smallest number : ${arr[1]}"