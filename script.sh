
#/!bin/bash

dir="/home/hp/git/segregate_photos/"
for image in "$dir"/*
do
	
	imagename="$(basename "${image}")"
	echo "$imagename"
	year="$(echo "${imagename}" | cut -c 1-4)"
	echo "year $year"
	month="$(echo "${imagename}" | cut -c 6)"
	echo "month $month"
	mkdir -p all_photos/$year/$month/
	cp $image all_photos/$year/$month/
done
