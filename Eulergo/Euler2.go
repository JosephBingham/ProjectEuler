package main

import "fmt"
import  "math"

func main(){
	sum := 0
	for i := 0.0; i < 40; i++{
		fmt.Println(int(getFib(i))%2, i)
		if int(getFib(i)) % 2 == 0{
			sum += int(getFib(i))
		}
	}
	fmt.Println(sum)
}

func getFib(n float64) float64 {
	a := (1/math.Pow(5, .5))
	p1 := (1 + a)/2
	p2 := (1 - a)/2
	g := a*(math.Pow(p1, n) - math.Pow(p2, n))
	return math.Floor(g)
}
