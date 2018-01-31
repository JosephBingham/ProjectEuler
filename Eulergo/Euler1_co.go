package main

import "fmt"

func getSum(l *int, n int){
	for i := 0; i < 1000; i += n{
		*l += i
	}
}

func main(){
	a := 0
	b := 0
	c := 0
	fmt.Println(a, &a)
	fmt.Println(b, &b)
	fmt.Println(c, &c)
	go getSum(&a, 3)
	go getSum(&b, 5)
	go getSum(&c, 15)
	fmt.Println(a + b - c)
}

