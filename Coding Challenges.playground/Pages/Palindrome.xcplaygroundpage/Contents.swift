//: [Previous](@previous)

import Foundation

// always lowercase the function names, use camelCase
// is there anyway to simplify this function

func palindrome(input: String) -> Bool {
    
    // check if the reversed version of the String is the same as the original one
    var lowercased = input.lowercased()
    // simplified version
    return String(lowercased.reversed()) == lowercased
    
    // initial attempt
    if String(lowercased.reversed()) == lowercased {
        return true
    }
    return false
}

print(palindrome(input: "Rats live on no evil star"))
print(palindrome(input: "rotator"))
print(palindrome(input: "Never odd or even"))
print(palindrome(input: "Hello world"))


class Solution {
    func isPalindrome(_ x: Int) -> Bool {
        return x < 0 ? false : method(x: x) == x
    }
    private func method(x: Int) -> Int {
        var r = 0
        var x = x
        while x != 0 {
            r = r * 10
            r = r + x % 10
            x /= 10
        }
        return (r < Int32.min || r > Int32.max) ? 0 : r
    }
}

func sumOfDigits(_ input: Int) -> Int {
    
    var sum = String(input).compactMap { $0.wholeNumberValue}.reduce(0, +)
    
//    for index in 0..<input {
//      // need to add all indexes in input
//        for index2 in 1..<input {
//            let sum =
//        }
//    }

    return sum
}
print(sumOfDigits(23))


//assert(Palindrome(input: "rotator" ) == true)


let possibleNumbers = ["1", "2", "three", "///4///", "5"]


let mapped: [Int?] = possibleNumbers.map { str in Int(str) }
// [1, 2, nil, nil, 5]
print(mapped)


let compactMapped: [Int] = possibleNumbers.compactMap { str in Int(str) }
// [1, 2, 5]
print(compactMapped)
