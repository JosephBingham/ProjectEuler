#!/bin/usr/python/

m = 600851475143
n=m
e=0
while(e==0):
	for i in xrange(2, m, 1):
		if n==i:
			print n
			e = 1
			break
		if n%i == 0:
			n=n/i
			break

print 'Done'
