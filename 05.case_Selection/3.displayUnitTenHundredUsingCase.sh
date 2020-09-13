#!/bin/bash
echo -n "Enter the unit's place number you want to see, ex-1,10,100: "
read M
case $M in
1) echo -n "Units"
10) echo -n "Tens " ;;
100) echo -n "Hundreds " ;;
1000) echo -n "Thousands " ;;
10000) echo -n "Ten Thousands " ;;
100000) echo -n "Lakhs " ;;
1000000) echo -n "Ten Lakhs " ;;
esac