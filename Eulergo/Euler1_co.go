package main

import "fmt"


func main(){

	a, b, c := 0
	go getSum(&a, 3)
	go getSum(&b, 5)
	go getSum(&c. 15)
	fmt.Println(a + b - c)
}

func getSum(l *int, n int){
	for i := 0; i < 1000; i += n{
		l += i
	}
}
