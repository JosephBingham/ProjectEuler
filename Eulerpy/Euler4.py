#! /usr/bin/python
print max([x*y if str(x*y) == str(x*y)[::-1] else 0 for x in xrange(100,999) for y in xrange(100,999)])
