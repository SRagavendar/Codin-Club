cat access.log | cut -d" " -f 4,11 | sort | uniq | tail -4
cat access.log | grep Oct | awk '{print $11}' | sort | uniq -c | sort -nr | head -4
