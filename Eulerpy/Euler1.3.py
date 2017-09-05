#!/usr/bin/python
se = []
for i in xrange(1000):
	if i % 3 == 0 or i % 5 == 0:
		se.append(i)


print sum(se)
#a = a + sum([x for x in xrange(5,1000,5)]
#a = a -  sum([x for x in xrange(15,1000,15)]
