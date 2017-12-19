#!/bin/bash

function isprime {
	for (( i=2 ; (("$i" < "$1 + 1")) ; i ++))
	do
	if [ $(($1%i)) == 0 ]
	then
	echo "0"
	fi
	done
	echo
}

for (( j=2 ; (("$j" < "600851475143")) ; j ++))
do
if [[ $((600851475143%j)) == 0 ]]
	then
	if [[ $((isprime$j)) -eq "" ]]
	then
		echo $j
	fi
fi
done
