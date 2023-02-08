import UIKit

// write a function that returns the least common multiple (LCM) of two integers.

// lcm(9, 18) -> 18

// lcm(8, 5) -> 40

// lcm(17, 11) -> 187

// Both values will be positive
// the LCM is the smallest integer that is divisible by both numbers such that the remainder is zero

func leastCommonMultiple(of a: Int, and b: Int) -> Int {
    return (a * b) / greatestCommonDivisor(of: a, and: b)
}

func greatestCommonDivisor(of a: Int, and b: Int) -> Int {
   
    if a % b == 0 {
    
        return a
        
    } else if b % a == 0 {
        
        return b
    }
    return a * b
}
greatestCommonDivisor(of: 9, and: 18)
greatestCommonDivisor(of: 8, and: 5)
greatestCommonDivisor(of: 17, and: 11)
greatestCommonDivisor(of: 12, and: 16)
