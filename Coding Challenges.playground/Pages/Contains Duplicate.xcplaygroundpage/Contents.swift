//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// Given an integer array nums, return true if any value appears more than once in the array, otherwise return false.

/* Input: nums = [1, 2, 3, 3]
 Output: true
 
 Input: nums = [1, 2, 3, 4]
 Output: false
 */

func solution(nums: [Int]) -> Bool {
    
    // use conditional to check the occurence of the same number
    for num in 0..<nums.count {
        for j in (num + 1)..<nums.count {
            if nums[num] == nums[j] {
                return true
            }
        }
    }
    return false
}

print(solution(nums: [1, 2, 3, 3]))


// We use underscore [(_ number: Int)]if we don't want the label name of the parameter not called when the function is called

func isEven(_ number: Int) -> Bool {
    if number % 2 == 0 {
        return true
    } else {
        return false
        
    }
}
print(isEven(7)) // No label needed when calling it

// simplified version of the above code
func isEven(number: Int) -> Bool {
    return number % 2 == 0
}
print(isEven(number: 8)) // Label name is needed when calling the function
