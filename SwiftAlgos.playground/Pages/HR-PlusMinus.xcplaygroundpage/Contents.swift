//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func plusMinus(arr: [Int]) -> Void {
    // Write your code here
    var positive = 0
    var negative = 0
    var zero = 0
    
    for num in arr {
        // guard must be boolean
        // guard is for validation not computation
        // guard is meant to protect execution, not calculate values
        guard num != 0 else {
            zero += 1
            continue
        }
        if num > 0 {
            positive += 1
        } else {
            negative += 1
        }
    }
    
    for number in arr {
        if number < 0 {
            negative += 1
        } else if number > 0 {
            positive += 1
        } else if number == 0 {
            zero += 1
        }
    }
    print(Double(positive) / Double(arr.count))
    print(Double(negative) / Double(arr.count))
    print(Double(zero) / Double(arr.count))
}
var input  = [-4, 3, -9, 0, 4, 1]
plusMinus(arr: input)
