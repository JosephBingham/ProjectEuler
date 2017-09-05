#!/usr/bin/python
import math

for a in range (1000):
	for b in range (1000):
		for c in range (1000):
			if a + b + c == 1000 and int(a**2 + b**2)**.5 == c:
				print a , b, c
