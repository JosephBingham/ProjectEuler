min = 100
max = 999
best = 0
str(x) = "$x"
is_pal(x) = str(x) == reverse(str(x))

for i in min:max
	for j in min:max
		if(is_pal(i*j) && best < i*j)
			best = i*j
		end
	end
end
println(best)	
	

