//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// https://www.hackerrank.com/challenges/equality-in-a-array/problem?isFullScreen=true
func equalizeArray(arr: [Int]) -> Int {
    var count = 0
    // dictionary instead of an array
    var countArray = [Int]()
    for number1 in arr {
//        print(arr[number])
        for number2 in arr {
            if number1 == number2 {
                countArray.append(number1)
            }
        }
    }
    print(countArray)
    return count
}

print(equalizeArray(arr: [1,2,2,3]))
