start = 1
bestc = 0
bests = 1

function col(x)
	
	if x == 1
		return 1
	elseif x%2 == 0
		return col(x/2) + 1
	elseif x%2 == 1
		return col((3x+1)/2) + 2
	end
end



while(start < 1000000-1)
	start += 1
	c = col(start)
	if(c > bestc)
		bestc = c
		bests = start
	end
end 

println(bests)
println(col(837799))






