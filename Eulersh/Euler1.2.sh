#!/bin/bash
sum=0
printf "%4s\t%8s\n" "Num" "Sum"
for i in {1..999}
do
if [[ $((i%3)) -eq 0 ]] || [[ $((i%5)) -eq 0 ]]
then sum=$((sum+i))
# One line for each found number and sum progress
printf "%4s\t%8s\n" $i $sum
# Single line, overwritten at each found number
#printf "\r%4s\t%8s" $i $sum
# Makes sense in combination with
# single line output to show progress
#sleep 0.02
fi
done
#echo $sum #final result
exit
