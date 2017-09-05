upper_bound = 4*10**6
f = 0
g = 1
h = 0
s = 0
while(True):
	h= f+g
	if h%2 == 0:
		s = s+h
	f=g
	g=h
	if h >= upper_bound:
		print s
		break
