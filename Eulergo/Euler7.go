package main

import ("fmt"
	"math"
	)

func isprime(n int) bool {
	if n == 2 {
		return true
	}
	if n % 2 == 0 {
		return false
	}
	lim := int(math.Sqrt(float64(n)))
	for i := 3; i <= lim; i += 2 {
		if n % i == 0 {
			return false
		}
	}
	return true
}


func main(){
	k := 3
	j := 2
	best := 0
	for j <= 10001 {
		if isprime(k) {
			j++
			best = k
		}
		k += 2
	}
	fmt.Println(best)

}
