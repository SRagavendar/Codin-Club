touch abc.log.1 def.log.1 jkl.log.1

#! /bin/bash
date=$(date +%Y%m%d)
for file in *.1
do
	basename=${file%.*}    # Remove extension
	extension=${file##*.}  # Remove basename
	mv "$file" "$basename"_"$date.$extension"
done
