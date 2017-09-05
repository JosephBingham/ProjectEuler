#!/usr/bin/python
import math

upper_bound = math.factorial(20)
divisible = True
for i in xrange(2520, upper_bound, 2520):
	# This is a comment

	for j in xrange(11, 20, 1):
		if i%j != 0:
			divisible = False
			break
		else:
			divisible = True
	if divisible:
		print i
		break


