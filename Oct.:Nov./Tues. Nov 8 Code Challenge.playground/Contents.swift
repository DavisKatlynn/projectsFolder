import UIKit

//Sum all the numbers of a given array ( cq. list ), except the highest and the lowest element ( by value, not by index ).
// The highest or lowest element respectivley is a single element at each edge, even if there are more than onw with the same value.
// Example
// { 6, 2, 1, 8, 10 } => 16
// { 1, 1, 11, 2, 3 } => 6

func returnSum(array: [Int]) -> Int {
    return array.sorted().dropFirst().dropLast().reduce(0, +)
    
}

returnSum(array: [6, 2, 1, 8, 10])
returnSum(array: [1, 1, 11, 2, 3])

