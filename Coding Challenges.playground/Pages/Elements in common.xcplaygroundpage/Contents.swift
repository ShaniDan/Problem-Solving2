//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// Given two arrays that are sorted and distinct, find the number of elements in common.
// MARK: Time complexity of this algorithm is O(n2) O of n squared but it can be optimized using filter method

func commonElements(_ input1: [Int], _ input2: [Int]) -> Int {
    // We need an empty array that holds the number of common elements
    var result = Int()
    // loop over the two arrays
    for char1 in input1 {
        for char2 in input2 {
            // compare the elements in two arrays and the matching character and increment the result
            if char1 == char2 {
                result += 1
            }
            
        }
    }
    return result
}

print(commonElements([1, 3, 5, 7], [2, 3, 4, 6] ))


// MARK: Time complexity of this algorathim is O(n log n)

func commonElements2(_ input1: [Int], _ input2: [Int]) -> Int {
    
    var common = input1.filter {input2.contains($0)}
    return common.count
}
print(commonElements([1, 3, 5, 7], [2, 3, 4, 6]))
