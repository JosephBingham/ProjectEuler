#! /usr/bin/python
import math
#def palindrome_test(n):
n = 101
digit = (int)(math.log(n,10)
for i in xrange(digit):
	divisora = 10**i
	digita = n/divisora
	tdigita = digita %10
	divisorb = i(10**(digit))
	digitb = n/divisorb
	tdigitb = digitb % 10
	if not tdigita == tdigitb:
		return False
	return True

#print palindrome_test(323)
#print palindrome_test (123)

