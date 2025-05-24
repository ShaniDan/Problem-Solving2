//: [Previous](@previous)

import Foundation
//
//extension Array where Element == Int {
//    func numbersAreConsecutive() -> Bool {
//        
//        // num and nextNum is to compare the numbers in an array
//        
//        for (num, nextNum) in zip(self, dropFirst())
//            where (nextNum - num) != 1 { return false }
//        return true
//    }
//}
//
//var arr = [1, 2, 3, 4, 5]
//print(arr.shuffled().numbersAreConsecutive())



/*
 Given an array of numbers, find the longest subarray of consecutive numbers and return it.
 [1, 2, 3, 4, 5] should return [1, 2, 3, 4, 5]
 [4,1,3,6,7] should return [1, 3, 6, 7]
 [4, 3, 2, 1] should return []
 [5, 6, 8, 10, 1, 2, 3, 4] should return [1, 2, 3, 4]

 The numbers in the subarray should also have their order preserved.
 */

func longestSubarray(_ input: [Int]) -> [Int] {

    // if it's not empty it'll return true.
    // this the quickest way of checking different cases.
    
    guard !input.isEmpty else {
        return []
    }
    var bestStart = 0
    var bestEnd = 0
    // 1st pointer
    var startIndex = 0
    // loop over by getting the index
    // sliding window collections
    // 1st pointer
    for index in 0..<input.count {
        // check if we are at the end of the array
        // check if nextIndex is greater than the currentIndex
        
        if index != input.count - 1 && input[index] < input[index + 1] {
//            print(index)
            // if yes continue
            continue
        }
        // if no process current sequence
        let bestLength = bestEnd - bestStart
        print("BestLength",bestLength)
        let currentLength = index - startIndex
        print("currentLength",currentLength)
        if currentLength >= bestLength {
            bestStart = startIndex
            print("bestStart", bestStart)
            bestEnd = index
            print("bestEnd", bestEnd)
        }
        startIndex = index + 1
        print("startIndex", startIndex)
    }
    
    var result = input[bestStart...bestEnd]
    
    return Array(result)
}
print(longestSubarray([4,1,3,6,7]))



//
//var bestStart = 0
//var bestEnd   = 0
//var runStart  = 0
//var previous  = nums[0]
//
//// two pointer solution
//
//for (index, item) in nums.enumerated() {
//    if index == 0 {
//        continue
//    }
//    
//    if item > previous {
//        if index - runStart > bestEnd - bestStart {
//            bestStart = runStart
//            bestEnd   = index
//        }
//    }
