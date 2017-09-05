#!/usr/bin/python

import sys

def is_prime(n):
	if n<2: return False
	else:
		for i in xrange(2, int(n**(.5))+1):
			if n % i == 0:
				return False
		return True



#if is_prime(42):
#	print 'yay'
#else:
#	print 'no'

j = 0
for i in xrange (sys.maxint):
	if is_prime(i):
		j = j + 1
		if j == 10001:
			print i
			break




