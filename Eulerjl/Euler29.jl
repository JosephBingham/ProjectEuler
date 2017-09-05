powers = Set()

a = BigInt(0)
b = BigInt(0)

for a in 2:100
	for b in 2:100
		push!(powers, BigInt(a^b))
	end
end

println(length(powers))
