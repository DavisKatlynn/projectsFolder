import UIKit

//create a function that checks to see if a given Int is a prime number. Return true if it is. Return false if it is not.


func isPrime(n: Int) -> Bool {
    if n <= 1 {
        return false
    }
    if n <= 3 {
        return true
    }
    var i = 2
    while i*i <= n {
        if n % i == 0 {
            return false
        }
        i = i + 1
    }
    return true
}

isPrime(n: 3)
isPrime(n: 10)
isPrime(n: 19)
isPrime(n: 2)
isPrime(n: 1)







