package main

import (
	"fmt"
	"math"
)

func check(n, m int) bool {
	smaller := int(math.Min(float64(n), float64(m)))
	bigger := int(math.Max(float64(n), float64(m)))

	if bigger%smaller == 0 {
		return true
	}

	if bigger >= 2*smaller {
		return true
	}

	return !check(smaller, bigger%smaller)
}

func main() {
	var n, m int

	fmt.Scanf("%d %d", &n, &m)

	if check(n, m) {
		fmt.Println("win")
	} else {
		fmt.Println("lose")
	}
}
