#!/usr/bin/python
from sympy import *
import time
x = Symbol('x')

one = sum([x**i for i in xrange(201)])

#print one.subs(x, 1)

two = sum([x**(i*2) for i in xrange(201/2 + 1)])

five = sum([x**(i*5) for i in xrange(201/5 + 1)])

ten = sum([x**(i*10) for i in xrange(201/10 + 1)])

twenty = sum([x**(i*20) for i in xrange(201/20 + 1)])

fifty = sum([x**(i*50) for i in xrange(201/50 + 1)])

hund = sum([x**(i*100) for i in xrange(201/100 + 1)])

thund = sum([x**(i*200) for i in xrange(201/200 + 1)])

t = [one, two, five, ten, twenty, fifty, hund, thund]

a = t[-2] * t[-1]


print a.simplify()
