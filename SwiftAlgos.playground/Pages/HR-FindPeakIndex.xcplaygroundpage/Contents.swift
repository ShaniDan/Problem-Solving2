//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/find-peak-element-in-bitonic-array/problem?isFullScreen=true
// this is O(n) because of max() modifier
func findPeakIndex(counts: [Int]) -> Int {
    var result = 0
    let minIndex = 0
    let maxIndex = counts.count - 1
    let midIndex = maxIndex/2
    let midValue = counts[midIndex]
    
    if midValue > counts[minIndex] {
        let slice = Array(counts[midIndex + 0...maxIndex])
        result = counts.firstIndex(of: counts.max()!) ?? 0
    }
    return result
}

print(findPeakIndex(counts: [1, 3, 5, 4, 2]))

// this is O(log n) -> binary search
func findPeakIndex2(counts: [Int]) -> Int {
    var left = 0
    var right = counts.count - 1
    
    while left < right {
        let mid = (left + right) / 2
        print(mid)
        if counts[mid] > counts[mid + 1] {
            right = mid
        } else {
            left = mid + 1
        }
    }
    return left
}
print(findPeakIndex2(counts: [1, 3, 5, 6, 4, 2]))
