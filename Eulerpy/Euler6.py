#!/usr/bin/python
sumofsquares = 0
squareofsums = 0
for i in xrange(101):
	squareofsums += i
sqaureofsums = squareofsums * squareofsums

for i in xrange(101):
	sumofsquares += (i*i)

num = sqaureofsums - sumofsquares

print num 
