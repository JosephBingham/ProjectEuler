
def primes_sieve(limit):
    limitn = limit+1
    not_prime = set()
    primes = []

    for i in xrange(2, limitn):
        if i in not_prime:
            continue

        for f in xrange(i*2, limitn, i):
            not_prime.add(f)

        primes.append(i)

    return primes

a = 600851475143
b = int(a**.5)
num = 0
setu = primes_sieve(b)
for j in setu:
	if(a%j == 0):
		num = j
print num


