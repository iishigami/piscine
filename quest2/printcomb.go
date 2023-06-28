package piscine
import "github.com/01-edu/z01"
func PrintComb() {
	var aRune string = "0123456789"
	for i := 0; i < 10; i++ {
		for j := i + 1; j < 10; j++ {
			for k := j + 1; k < 10; k++ {
				if i == 7 && j == 8 && k == 9 {
					z01.PrintRune(rune(aRune[i]))
					z01.PrintRune(rune(aRune[j]))
					z01.PrintRune(rune(aRune[k]))
				} else {
					z01.PrintRune(rune(aRune[i]))
					z01.PrintRune(rune(aRune[j]))
					z01.PrintRune(rune(aRune[k]))
					z01.PrintRune(',')
					z01.PrintRune(' ')
				}
			}
		}
	}
	z01.PrintRune('\n')
}
