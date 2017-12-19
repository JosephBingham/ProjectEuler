package main

import "fmt"

func main(){
	div := false
	j := 5250
	for !div {
		for i := 11; i < 20; i++ {
			if j % i != 0 {
				div = false
				j++
				break
			} else {
			div = true
			}
		}
	}
	fmt.Println(j)
}

