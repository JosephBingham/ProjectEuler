sum = Int128(0)
square = Int128(0) 

for i = 1:100
	sum += i^2
	square += i
end
square ^= 2

println(square-sum)
