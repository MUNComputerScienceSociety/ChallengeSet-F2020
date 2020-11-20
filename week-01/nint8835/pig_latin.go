package main

import (
	"bufio"
	"fmt"
	"os"
	"strings"
)

func main() {
	scanner := bufio.NewScanner(os.Stdin)

	for scanner.Scan() {
		line := scanner.Text()
		words := strings.Split(line, " ")

		for index, word := range words {
			vowelIndex := strings.IndexAny(word, "aeiouy")
			switch vowelIndex {
			case 0, -1:
				words[index] = word + "yay"
			default:
				words[index] = word[vowelIndex:] + word[0:vowelIndex] + "ay"
			}
		}
		fmt.Println(strings.Join(words, " "))
	}
}
