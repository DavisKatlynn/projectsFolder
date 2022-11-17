import UIKit

// Create a function that accepts 3 pqarameters: a, b, and an optiinal margin. The function should return whatever a is lower than, close to, or higher than b

// a is considered "close to" b if margin is greater than or equal to the distance between a and b

// please note the following:
// when a is close to b, return 0.
//otherwise...
//when a is less than b, return -1
// when a is greater than b, return 1
//if margin is not given, treat it as zero
//assume: margin >= 0



func compareValuesWithMargin(a: Double, b: Double, margin: Double? = 0) -> Int {
    let distance = a>b ? (a - b) : (b - a)
    guard distance > (margin ?? 0) else { return 0 }
    return a > b ? 1 : -1
}


compareValuesWithMargin(a: 3, b: 4, margin: 2)
compareValuesWithMargin(a: 3, b: 4)
compareValuesWithMargin(a: 3, b: -4)
compareValuesWithMargin(a: 5, b: 3, margin: 1)

