x = 1
y = 1
z = 1

function check(x, y, z)
	if !(x == y && z == x && y == z)
		return false
	end
	a = ((x + y)^.5 == floor((x + y)^.5))
	b = ((x - y)^.5 == floor((x - y)^.5))
	c = ((x + z)^.5 == floor((x + z)^.5))
	d = ((x - z)^.5 == floor((x - z)^.5))
	e = ((y + z)^.5 == floor((y + z)^.5))
	f = ((y - z)^.5 == floor((y - z)^.5))
	return (a && b && c && d && e && f)
end

increment = 0
while( ! check(x, y, z))
	x += (increment % 3 == 0)
	y += (increment % 3 == 1)
	z += (increment % 3 == 2)
end

println(x + y + z)

