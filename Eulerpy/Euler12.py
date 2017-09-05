#!/usr/bin/python
i = 1
j = 1
def isdivisable(n):
	divisors = 0
	for i in xrange(1,n):
		if n%i == 0:
			divisors += 1
			if divisors == 500:
				return True
	return False

while( not isdivisable(i)):
	j += 1
	i += j
#	print i
print i
