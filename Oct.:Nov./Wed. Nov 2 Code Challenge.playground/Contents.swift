import UIKit

//There was a test in your class and you passed it congradulations!
//But youre an ambitious person. You want to know if youre better than the average student in your class .
//you recieve an array with your peers' test scores. Now calculate the average and compare your score!

//return true is youre better, else false!
//Note:
//Your points are not included in the array of your class's points. For calculating the average point you may add yoour point to the given array!




let array = [55.6, 75.0, 99.9, 100.5, 100.0]
let myScore = 95.5
var average = array.reduce(0.0) {
    return $0 + $1/Double(array.count)
    
}

return myScore > average
