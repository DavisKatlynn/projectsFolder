import UIKit

//Create a function that takes in an Int as input and returns the factorial of that number//

func factorial(n: Int) -> Int {
    var result = 1
    if(n > 0){
        for i in 1...n{
            result *= i
        }
    }
    return result
}
let num = 3
let result = factorial(n: num)
print("\(num)! = \(result)")
