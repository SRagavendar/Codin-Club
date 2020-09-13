## Print list of web response code count in unique sorted order at specific hours.
cat access.log | cut -d" " -f 9,10 | sort | uniq -c

## Print list of last 10 unique sorted client IP from access.log
cat access.log | cut -d" " -f 1 | sort | uniq | tail -10
