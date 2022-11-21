import UIKit

// Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero digits.

// Examples:
// 1) n = 3, x = 1, y = 3 => true because 3 is divisible by 1 and 3
// 2) n = 12, x = 2, y = 6 => true because 12 is divisible by 2 and 6
// 3) n = 100, x = 5, y = 3 => false because 100 is not divisible by 3
// 4) n = 12, x = 7, y = 5 => false because 12 is neither divisible by 7 nor 5


for i in 1...10 {
    if i.isMultiple(of: 2) {
        print("Number is even")
    } else {
        print("Number is odd")
    }
}

var grades = [46.7, 24.5, 78.4, 95.4, 80.0]

func isDivisible(n: Int, x: Int, y: Int) -> Bool {
    return n.isMultiple(of: x) && n.isMultiple(of: y)
}

isDivisible(n: 12, x: 2, y: 6)

isDivisible(n: 100, x: 5, y: 13)
