package main

import "fmt"
import "math"

func isprime(a int) bool {
	if a < 1 || a % 2 == 0 {
		return false
	}
	if a == 2 {
		return true
	}
	f := math.Sqrt(float64(a))
	y := int(f)
	for i := 3; i <= y + 1; i += 2 {
		if a % i == 0 {
			return false
		}
	}
	return true
}

func main(){
	num := 600851475143
	stuff := 0
	for i := 3; i <= num; i += 2 {
		if num % i == 0 && isprime(i) {
			stuff = i
		}
	}
	fmt.Println(stuff)
}
