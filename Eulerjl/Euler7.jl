
function primes_sieve(limit)
	not_prime = Set()
	primes = []
	for i in 2:limit
		if (i in not_prime)
			continue
		end
		f = 2i
		while(f<limit)
			push!(not_prime,f)
			f += i
		end
		push!(primes, i)
	end
	return primes
end

j = 10000000^5
while(length(primes_sieve(j)) < 10000)
	j += 1
end
println(primes_sieve(j))

