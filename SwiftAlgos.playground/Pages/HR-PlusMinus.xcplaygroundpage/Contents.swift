//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Given an array of integers, calculate the ratios of its elements that are , , and . Print the decimal value of each fraction on a new line with 6 places after the decimal.

 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

 Example

 There are  elements: two positive, two negative and one zero. Their ratios are ,  and . Results are printed as:

 0.400000
 0.400000
 0.200000Given an array of integers, calculate the ratios of its elements that are , , and . Print the decimal value of each fraction on a new line with 6 places after the decimal.
 
 Note: This challenge introduces precision problems. The test cases are scaled to six decimal places, though answers with absolute error of up to  are acceptable.

 Example

 There are  elements: two positive, two negative and one zero. Their ratios are ,  and . Results are printed as:

 0.400000
 0.400000
 0.200000
 */

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
