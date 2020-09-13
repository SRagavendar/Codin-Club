1. awk  '$4>10000 {print $2"\t"$7} ' data.csv

2. cat data.csv | grep -v CAPTAIN | awk '{x+=$7}END{ if (NR>0) print x/NR-1}'

3. awk '$5>=7000 && $5<=10000 {print $3"\t"$5}' data.csv

4. cat data.csv | awk '{x+=$4}END{print x/NR-1}'
