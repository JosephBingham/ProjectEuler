best = 0
num = 600851475143

function is_prime(x)
	if x%2 == 0
		return false
	end
	for i in 3:round(x^.5)+1
		if(x%i == 0)
			return false
		end
	end
	return true
end

for j in 3:round(num^.5)
	if(is_prime(j) && (num%j == 0))
		best = j
	end
end
println(best)



