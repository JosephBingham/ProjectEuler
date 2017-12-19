package main

import ("fmt"
	"strconv"
	)


func ispal(n int) bool {
	s := strconv.Itoa(n)
	for i := 0; i < len(s)/2; i++{
		if s[i] != s[len(s) - (i + 1)]{
			return false
		}
	}
	return true
}



func main(){
	max := 0
	for i := 100; i < 999; i++ {
		for j := 100; j < 999; j++ {
			if ispal(i*j) && i*j > max {
				max = i * j
			}
		}
	}
	fmt.Println(max)
}
