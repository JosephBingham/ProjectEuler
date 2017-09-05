function is_prime(n)
	if n == 2
		return true
	end
	if n % 2 == 0 
		return false
	end
	i = 3
	while( i <= round(n^.5))
		if n % i == 0 
			return false
		end
		i +=2
	end
	return true
end
k = 3
j = 2
best = 0
while(j <= 10001)
	if(is_prime(k))
		j += 1
		best = k
	end
	k += 2
end
println(best)

