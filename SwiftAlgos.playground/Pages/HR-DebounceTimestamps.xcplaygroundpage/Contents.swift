//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func debounceTimestamps(timestamps: [Int], K: Int) -> Int {
    var left = 0
    var arr = timestamps
    
    for right in 1..<arr.count {
        print(arr[right] - arr[left])
        if arr[right] - arr[left] >= K {
            left += 1
            arr[left] = arr[right]
        }
    }
    return left + 1
}

print(debounceTimestamps(timestamps: [1, 5], K: 0))
