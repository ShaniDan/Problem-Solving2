//: [Previous](@previous)

import Foundation
import SwiftUI

var greeting = "Hello, playground"

//: [Next](@next)

func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
    var result = [Int]()
    // loop over the nums
//for num in 0..<nums.count - 1
            for num in nums.indices {
        // this loops over the nums by index.
        /* for example:
         1st iteration - nums[num] means index 0 and nums[num + 1] means index 1
         2nd iteration - nums[num] means index 1 and nums[num + 1] means index 2
         And if you add them up it adds the indexes where it's looping over
         [2,7,11,5]
         First loop 2+7 = 9
         Second loop 7+11 = 18
         Third loop 11+5 = 16
         */
        let sum = nums[num] + nums[num + 1]
//        print(sum)
        if sum == target {
            result = [num, num + 1]
            break
        }
    }
    return result
}
print(twoSum( [2,7,11,5], 9))
