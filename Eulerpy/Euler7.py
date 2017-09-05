#!/usr/bin/python

import math

def primes_sieve(limit):
    limitn = limit+1
    not_prime = set()
    primes = []

    for i in range(2, limitn):
        if i in not_prime:
            continue

        for f in range(i*2, limitn, i):
            not_prime.add(f)

        primes.append(i)

    return primes




j = 1
while( len(primes_sieve(j)) < 10000):
	j = j + 1



print primes_sieve(j)
