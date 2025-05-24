//: [Previous](@previous)

import Foundation
import SwiftUI

var greeting = "Hello, playground"

//: [Next](@next)

/*
 Given a string s, the task is to return all permutations of a given string in lexicographically sorted order.

 Note: A permutation is the rearrangement of all the elements of a string. Duplicate arrangement can exist.

 Examples:

 Input:  s = “ABC”
 Output: “ABC”, “ACB”, “BAC”, “BCA”, “CAB”, “CBA”

 Input: s = “XY”
 Output: “XY”, “YX”

 Input: s = “AAA”
 Output: “AAA”, “AAA”, “AAA”, “AAA”, “AAA”, “AAA”
 */

func permutation(string: String, currentInput : String = " ") {
    let count = string.count
    let stringArray = Array(string)
    
    if count > 0 {
        print(currentInput)
        for char in 0..<count {
            let leftString = String(stringArray[0..<char])
            let rightString = String(stringArray[char + 1..<count])
            
            // why do we need recursion here
            
            permutation(string: leftString + rightString, currentInput: currentInput + String(stringArray[char]))
        }
    } else {
        print(currentInput)
        print("######")
    }
}

permutation(string: "ABC", currentInput: "")

func permutation2(input: String) {
//    for perm in input.permutations()
}
permutation(string: "ABC")

//extension Collection {
//    public func permutations(ofCount k: Int? = nil) -> PermutationsSequence<Self>
//    public func permutations<R>(ofCount kRange: R) -> PermutationsSequence<Self>
//        where R: RangeExpression, R.Bound == Int
//}
//
//extension Collection where Element: Hashable {
//    public func uniquePermutations(ofCount k: Int? = nil) -> UniquePermutationsSequence<Self>
//    public func uniquePermutations<R>(ofCount kRange: R) -> UniquePermutationsSequence<Self>
//        where R: RangeExpression, R.Bound == Int
//}

// Write a function that gets the biggest element in array.

func biggestElement(input: [Int]) -> Int {
    return input.max() ?? 0
}
print(biggestElement(input:[11, 1, 33, 44, 100, 111]))
