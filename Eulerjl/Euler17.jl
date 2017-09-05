# one two six 
# four five nine
# three seven eight
#########
# ten 
# eleven twelve 
# fifteen sixteen 
# thirteen fourteen 
# seventeen
lettercount = 3 + 8

function getletters(num)
	count = 0
	hun_check = round(num/100)%10
	ten_check = round(num/10)%10
	if(hun_check > 0)
		count += length("hundred")
		if hun_check in [1, 2, 6]
			count += 3 
		elseif hun_check in [4, 5, 9]
			count += 4
		elseif hun_check in [3, 7, 8]
			count += 5
		end
	end
	if(ten_check > 0)
		if(num < 20)
			if(num == 10)
				count += 3
			elseif( 13 > num > 10)
				count += 6
			elseif( 15 > num >= 13)
				count += 8
			elseif( 17 > num >= 15)
				count += 7
			






