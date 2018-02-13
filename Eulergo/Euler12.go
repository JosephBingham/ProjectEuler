package main


import "fmt"
import "math"

func div(n int) int {
	divs := 2
	for i := 2; i < int(math.Sqrt(float64(n))) + 1; i++ {
		if n % i == 0 {
			if i != int(math.Sqrt(float64(n))) {
				divs += 2
			} else {
				divs += 1
			}
		}
	}
	return divs
}


func main() {
	i := 0
	num := 0
	for div(num) < 500 {
		num += i
		i++
	}
	fmt.Println(num)
}
