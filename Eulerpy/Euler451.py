from itertools import permutations

def isPrime(n):
    if n == 2:
        return True
    if n < 2 or n % 2 == 0:
        return False
    for i in xrange(3, int(n**.5) + 1, 2):
        if i % n == 0:
            return False
    return True

print isPrime(9876543201)


perms = [''.join(p) for p in permutations('0123456789')]
perms = list(set(perms))

print max([x if isPrime(int(x)) else '0' for x in perms])




