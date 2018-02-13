package main

import "fmt"
import "math"

func isPrime(n int) bool {
	if n == 2 {
		return true
	}
	if n < 2 || n % 2 == 0 {
		return false
	}
	f := math.Sqrt(float64(n))
	y := int(f) + 1 
	for i := 3; i <= y ; i += 2 {
		if n % i == 0 {
			return false
		}
	}
	return true
}

func main(){
	sum := 0
	for i := 0; i <= 2000001; i++ {
		if isPrime(i) {
			sum += i
		}
	} 
	fmt.Println(sum)
}

