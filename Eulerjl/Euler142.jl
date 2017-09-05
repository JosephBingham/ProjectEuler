x = 1
y = 1
z = 1

function check(x, y, z)
	a = ((x + y)^.5 == floor((x + y)^.5))
	b = ((x - y)^.5 == floor((x - y)^.5))
	c = ((x + z)^.5 == floor((x + z)^.5))
	d = ((x - z)^.5 == floor((x - z)^.5))
	e = ((y + z)^.5 == floor((y + z)^.5))
	f = ((y - z)^.5 == floor((y - z)^.5))
	return (a && b && c && d && e && f && !(x == y && z == x && y == z))
end

function incrementx(x, num)
#	println(x)
	if (num == 0)
		return x + 1
	else
		return x
	end
end

function incrementy(y, num)
#	println(y)
	if(num == 1)
		return y + 1
	else
		return y
	end
end

function incrementz(z, num)
#	println(z)
	if(num == 2)
		return z + 1
	else 
		return z
	end
end

incrementer = 0

while( ! check(x, y, z))
	x = incrementx(x, incrementer)
	y = incrementy(y, incrementer)
	z = incrementz(z, incrementer)
	incrementer = (incrementer + 1) % 3
end

println(x + y + z)

#println(check(2,2,2))
