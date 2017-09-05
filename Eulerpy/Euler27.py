#!/usr/bin/python

def is_prime(n):
	if n<2: return False
	else:
		for i in xrange(2, int(n**(.5))):
			if n % i == 0:
				return False
		return True

maxn = 0
bestq = tuple()
for b in xrange(1001):
	for a in xrange(-999,999):
		countp = 0
		if is_prime(b):
			while is_prime(countp**2 + a*countp +b):
				countp += 1
			if countp > maxn:
				maxn = countp
				bestq = (a,b)
print bestq, maxn
