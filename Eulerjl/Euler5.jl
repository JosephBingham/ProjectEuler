upperbound = 1
for i in 2:20
	upperbound *= i
end

function is_div(x)
	for k = 2:20
		if x % k != 0
			return false
		end
	end
	return true
end

j = 2520
while j < upperbound
	if is_div(j)
		println(j)
		break
	end
	j += 2520
end



