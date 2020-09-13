#!/bin/bash
declare -A dice
function check(){
    status=0
    for i in ${!dice[@]}
    do
        if [[ ${dice[$i]} == 10 ]]
        then
            status=$((status+1))
            break;
        fi
    done
    echo $status
}
while [[ true ]]
do
    res=$( check )
    if [[ $res -eq 0 ]]
    then
        random=$((RANDOM%6 + 1))
        if [[ ${dice[$random]} == null ]]
        then
            dice[$random]=1
        else
            dice[$random]=$((dice[$random]+1))
        fi
    else
        break
    fi
done
for i in ${!dice[@]}
do
    echo "Face $i --> ${dice[$i]}"
done
min=1
for i in ${!dice[@]}
do
    if [[ ${dice[$min]} -gt ${dice[$i]} ]]
    then
        min=$i
    fi
done
echo "The number with the minimum occurrence is $min with ${dice[$min]} occurrences"
max=1
for i in ${!dice[@]}
do
    if [[ ${dice[$max]} -lt ${dice[$i]} ]]
    then
        max=$i
    fi
done
echo "The number with the maximum occurrence is $max with ${dice[$max]} occurrences"