package main

import "fmt"

func main(){
	sum := 0
	sqaure := 0
	for i := 0; i <= 100; i++ {
		sum += i*i
		sqaure += i
	}
	sqaure *= sqaure
	fmt.Println(sqaure - sum)
}
