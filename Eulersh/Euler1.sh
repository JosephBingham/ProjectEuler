#!/bin/bash

sum=0

for(( i=1; i<1000; i++)) do
	if [ $((i%5)) == 0 -o $((i%3)) == 0 ]
	then
	sum=$((i+sum))
	fi
	done 
echo "$sum"