#!/bin/bash

current=2
next=3
holder=3
sum=0

while [ $current -lt 4000000 ]
do
if [ $((current%2)) == 0 ]
then
sum=$((sum + current))
fi
holder=$next
next=$((next + current))
current=$((holder))
done
echo "$sum"
