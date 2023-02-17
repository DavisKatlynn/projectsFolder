import UIKit

// The additive persistence of an int, n, is the number of times you have to replace n with the sum of its digits until n beccomes a single digit int.

// create a function that takes an int as an argument and:
// return its additive persistence

// Examples: Additiva persistence
// additivePersistence(1679583) -> 3
// 1 + 6 + 7 + 9 + 5 + 8 + 3 = 39
// 3 + 9 = 12
// 1 + 2 = 3
// It takes 3 iterations to reach a single-digit number

// additivePersistence(123456) -> 2
// 1 + 2 + 3 + 4 + 5 + 6 = 21
// 2 + 1 = 3

// additivePersistence(6) -> 0)
//Because 6 is already a single-digit int

func additivePersistence(of num: Int) -> Int {
    var count = 0
    var sum = num
    
    while sum >= 10 {
        sum = String(sum).compactMap({ Int(String($0)) }).reduce(0, +)
        count += 1
    }
    
    return count
}
additivePersistence(of: 123456)
additivePersistence(of: 1679583)
