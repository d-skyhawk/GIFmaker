#!/bin/bash
k=0
> filelist.txt
for entry in *.png
do
	echo "$entry" >> filelist.txt
	convert $entry -resize 520x520 "imageuse$k.jpg"
	read
	((k++))
done
echo "Total Number of Files are $k"

