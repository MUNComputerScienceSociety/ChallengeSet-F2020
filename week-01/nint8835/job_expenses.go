package main

import (
	"fmt"
)

func main() {
	var count int
	fmt.Scanf("%d", &count)

	values := make([]int, count)

	for i := 0; i < count; i++ {
		fmt.Scanf("%d", &values[i])
	}

	expenses := 0
	for _, value := range values {
		if value < 0 {
			expenses -= value
		}
	}
	fmt.Println(expenses)
}
