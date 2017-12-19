#! /usr/bin/python


def is_prime(n):
	if(n % 2 == 0): return false
	for i in xrange(3, int(n**.5), 2):
		if n % i == 0:
			return False
	return True





number = 600851475143

for i in xrange(int(number ** .5)/2*2+1, 3, -2):
	if number % i == 0 and is_prime(i):
		print i
		break

