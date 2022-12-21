import UIKit

// Your Job
// Find the sum of all multiples of n below m

// keep in mind
// n and m are natural numbers (positive integers)
// m is excluded from the multiples

// Examples
// sumMul(2, 9) ==> 2 + 4 + 6 + 8 = 20
// sumMul(3, 13) ==> 3 + 6 + 9 + 12 = 30
// sumMul(4, 123) ==> 4 + 8 + 12 + ... = 1860
// sumMul(4, -7) ==> nil



/*func sumMul() {
    let multiples = [...]
    let sum = multiples.reduce(0, combine: +)
}
sumMul(2, 9)
sumMul(3, 13)
sumMul(4, 123)
sumMul(4, -7)*/

// or

/*var array = [3, 6, 9, 12]
var n = 0
for i in array {
    n += i
}
print("My sum of elements is: \(n)")*/

//or teacher example

func sumMul(_ multiple: Int, _ maxAmount: Int) -> Int? {
    guard multiple >= 0, maxAmount >= 0 else {
        return nil
    }
    
    var total = 0
    var runningMultiple = multiple
    
    while runningMultiple < maxAmount {
        total += runningMultiple
        runningMultiple += multiple
    }
    
    return total
}
sumMul(2, 9)
sumMul(3, 13)
sumMul(4, 123)
sumMul(4, -7)
