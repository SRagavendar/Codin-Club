#! /bin/bash
clear
echo "Think any number between 1 to 100"
low=1
high=100
mid=0
mid=$(((low+high)/2))
isNotMagicNumber=1
while (($isNotMagicNumber==1))
do
        if (($low == $mid))
        then
                isNotMagicNumber=0
                echo "The magic number is $low "
        else
                read -p "is number is less than $mid , Yes?:" choice
        fi
        if [[ "$choice" == "yes" || "$choice" == "y" || "$choice" == "Y" ]]
        then
                high=$mid
        else
                low=$mid
        fi
        mid=$(((low+high)/2))
done