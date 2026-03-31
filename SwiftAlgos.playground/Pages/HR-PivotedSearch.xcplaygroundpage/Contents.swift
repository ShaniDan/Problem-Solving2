//: [Previous](@previous)
//https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/search-timestamp-in-rotated-log-timestamps/problem?isFullScreen=true

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func searchRotatedTimestapms(nums: [Int], target: Int) -> Int {
    for index in nums.indices {
        if nums[index] == target {
            print("Found \(target) at index \(index)")
            return index
        }
    }
    return -1
}
print(searchRotatedTimestapms(nums: [1609466400, 1609470000, 1609473600, 1609459200, 1609462800], target: 1609459200))


let fruits = ["Apple", "Orange", "Banana", "Grape"]
let targetElement = "Banana"

for index in fruits.indices {
    if fruits[index] == targetElement {
        print("Found \(targetElement) at index \(index)")
        break
    }
}
