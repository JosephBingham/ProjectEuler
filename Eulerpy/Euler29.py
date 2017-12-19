powers = set()


for i in xrange(2,101):
	for j in xrange(2,101):
		powers.add(i**j)

print len(powers)
