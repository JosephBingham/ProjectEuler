
triangle = 1 
index = 1

function div(n)
	val = 0
	for i in 1:round(n^ .5)
		if n%i == 0
			val += 2
		end
	end
	return val
end

while(div(triangle) < 500)
	index += 1
	triangle += index
end

println(triangle)	









