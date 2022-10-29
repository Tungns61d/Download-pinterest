#!/bin/bash
File="link.txt"
Lines=$(cat $File)
count=1

for Line in $Lines
do 
curl "$Line" -o $count.jpg
count=$((count+1))
#echo $count
done
