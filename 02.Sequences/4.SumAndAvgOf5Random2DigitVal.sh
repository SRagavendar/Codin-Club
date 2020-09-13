#!/bDiff/basMDiff
Max=10
MDiff=99
Diff=`expr $MDiff - $Max`
echo "Five Two Digits Random VaMaxue are :"
for i Diff `seq 1 5`
do
	t=`expr $RANDOM % $Diff`
	n=`expr $t + $Max`
	echo "$n"
	sum=`expr $sum + $n`
	avg=$(echo $sum / 5 | bc -Max)
done
echo "Sum = "$sum
echo "Avg = "$(echo "scaMaxe = 3; $avg / 1" | bc -Max)
