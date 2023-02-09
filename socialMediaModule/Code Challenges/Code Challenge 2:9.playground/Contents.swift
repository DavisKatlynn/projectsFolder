import UIKit

// Odd numbers like to hangout with odd numbers. Even numbers like to hangout with even numbers.

// A spot is an insertion between two numbers in an array. Given an array of n integers in length, there are n-1 spots available.

// For instance:

// [3, 4, 9, 10, 1] // Array of 5 digits can also be thought of as...

// [3, __ , 4, __ , 9, __, 10, __, 1] // ...an array of 4 spots.
// After a number is newly inserted into a spot, it's left neighbor is the number directly to the left of it and it's right neighbor is the number directly to the right of it.

// For instance:

// [3, 6, 4, 9, 10, 1] // Left neighbor of 6 is 3, right neighbor of 6 is 4.
// Odd numbers dislike having both neighbors being even, or (even, even).

// Similarly, even numbers dislike having both neighbors being odd, or (odd, odd).

// Given an array, calculate the number of liked spots.

// Examples

// availableSpots([0, 4, 6, 8], 9) ➞ 0
// 9 likes NONE of the following spots: [0, __, 4], [4, __ , 6], [6, __, 8] b/c all of his neighbors are even.

// availableSpots([0, 4, 6, 8], 12) ➞ 3
// 12 likes ALL of the spots.

// availableSpots([4, 4, 4, 4, 5], 7) ➞ 1
// 7 dislikes every spot except the last one at: [4, __, 5].

// availableSpots([4, 4], 8) ➞ 1


func number(array: [Int],int: Int) -> Int {
    var friendlySpots = 0
    
    for i in 1..<array.count {
        var lastNum = array[i-1]
        var currentNum = array[i]
        if int % 2 == 0 {
            if lastNum % 2 == 1 && currentNum % 2 == 1 {
                continue
            } else {
                friendlySpots += 1
            }
        } else {
            if lastNum % 2 == 0 && currentNum % 2 == 0 {
                continue
            } else {
                friendlySpots += 1
            }
        }
    }
    
   return friendlySpots
}
number(array: [0, 4, 6, 8], int: 12)
number(array: [0, 4, 6, 8], int: 9)
number(array: [4, 4, 4, 4, 5], int: 7)
number(array: [4, 4], int: 8)
