#!/usr/bin/python
from threading import Thread
import Queue as Q

q = Q.Queue()
q.put(0)

def sumer(delta):
	sum1 = q.get()
	print "starting sumer"
	step = 0
	while(step < 1000):
		sum1 = sum1 + step
		step = step + delta
#		print sum1
	q.put(sum1)

def subtracter(delta):
	sum2 = q.get()	
	print "starting subracter"
	step = 0
	while step < 1000:
		sum2 = sum2 - step
		step = step + delta 
#		print sum2
	q.put(sum2)
	print sum2

def main():
	print "starting main"
	t_3 = Thread(target=sumer, args=(3,))
	t_5 = Thread(target=sumer, args=(5,))
	t_n15 = Thread(target=subtracter, args=(15,))
	t_3.start()
	t_5.start()
	t_n15.start()

if __name__ == "__main__":
	main()
