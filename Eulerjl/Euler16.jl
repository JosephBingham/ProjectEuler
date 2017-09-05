num = BigInt(2)

num = num^1000

#println(num)

stringy = string(num)

#println(stringy)

arrayy = split(stringy,"")

#println(arrayy)

inty = []

for lett in arrayy
	push!(inty, parse(lett))
#	println(parse(lett))
end

summ = 0
for number in inty
	summ += number
end
println(summ)
