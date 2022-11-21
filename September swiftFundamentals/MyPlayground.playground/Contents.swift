import UIKit

//Mon. 10-3 Code Challenge
//Given and array of integers nums and an integer target, return indices of the two numbers such that they add up to target. You may assume that each input would have exactly one solution, and you may not use the same element twice. You can return the answer in any order.

/*var numbers: [Int] = [1, 3, 6, 7, 7, 14, 12]
var target = 26
var result = [Int]()
for i in 0..<numbers.count {
    for j in i+1..<numbers.count {
        if numbers[i] + numbers[j] == target {
            print(numbers[i],numbers[j])
            result.append(i)
            result.append(j)
        }
        }
}
print(Array(Set(result)))*/


//[3, 2, 4] 6
func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var indexes: [Int] = []
    
    for (i, num) in nums .enumerated() {
        indexes.append(i)
        for(j, num2) in nums.enumerated() {
            if (j != i && num + num2 == target) {
                indexes.append(j)
                return indexes
            }
        }
       indexes = []
    }
}
