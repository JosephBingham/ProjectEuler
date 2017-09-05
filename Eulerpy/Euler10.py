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

sums = 0

for i in primes_sieve(2000000):
	sums = sums + i

print sums
