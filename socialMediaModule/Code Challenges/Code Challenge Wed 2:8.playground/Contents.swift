import UIKit

// A robot roams around a 2D grid. It starts at (0, 0) facing north. After each time it moves, the robot rotates 90 degrees clockwise. Given the amount the robot has moved each time, you have to calculate the robot's final position//

// To illistrate, if the robot is given the movements 20, 30, 10, 40 then it will move:

// 20 steps to the North, now at (0, 20)
// 30 steps to the North, now at (30, 20)
// 10 steps to the North, now at (30, 10)
// 40 steps to the North, now at (-10, 10)
// ... and will end up at coordinates (-10, 10)

// your function should take in an array of ints (movements) and return a point (Final Position). A Point will be a custum struct that you make that has an xproperty and a y property

struct Point {
    var x = 0
    var y = 0
}
func robot(movements: [Int]) -> Point  {
    var x = 0
    var y = 0
    var position = 0
    for move in movements {
        switch position {
        case 0:
            y += move
            position = 5
        case 5:
            x += move
            position = 15
        case 15:
            y -= move
            position = 6
        case 6:
            x -= move
            position = 0
        default:
            continue
            
        }
    }
    return Point(x: x, y: y)
}
robot(movements: [20, 30, 10, 40])

