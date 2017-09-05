#! /usr/bin/python

current = 2
next = 3
holder = 3
sum = 0

while current < 4000000:
	if current % 2 == 0:
		sum = sum + current
	holder = next
	next = next + current
	current = holder
print sum

