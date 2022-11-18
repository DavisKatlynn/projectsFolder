import UIKit

// There are pillars near the road. The distance between the pillars is the same and the width of the pillers is the same. Your function accepts three arguments.
// number of pillars (>1);
// distance between pillars(10-30 meters);
// width of the pillar (10-50 centimeters)
// Calculate the distance between the first and last pillar in centimeters (without the width of the first and last pillar)


func pillarDistance(numOfPillar: Int, distance: Int, width: Int) -> Int {
   let distanceInCentimeters = distance * 100
    let totalDistance = (distanceInCentimeters * (numOfPillar - 1)) + ((numOfPillar - 2) * width)
    
    return totalDistance
}

print(pillarDistance(numOfPillar: 3, distance: 3, width: 100))
