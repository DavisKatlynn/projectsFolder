import UIKit

// It's the acedemic years end, fateful moment of your school report. Te averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy! You just need to write a script.

//Return the average of the given array rounded down to its nearest integer.

//The array will never be empty.

var intArray = [10, 15, 5, 7, 13]
let sumArray = intArray.reduce(0, +)

let avgArrayValue = sumArray / intArray.count


