//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/kangaroo/problem?isFullScreen=true
func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var result = String()
    var sum1 = x1
    var sum2 = x2
    for _ in zip(x1...10000,x2...10000) {
        sum1 += v1
        sum2 += v2

        if sum1 == sum2 {
            print(sum1)
            result = "YES"
            break
        } else {
            result = "NO"
        }
    }
    return result
}
print(kangaroo(x1: 1571, v1: 4240, x2: 9023, v2: 4234))


// This passes all the test cases
func kangaroo2(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    var sum1 = x1
    var sum2 = x2
    for _ in 0...10000 {
        sum1 += v1
        sum2 += v2

        if sum1 == sum2 {
            return "YES"
        }
    }
    return "NO"
}
print(kangaroo2(x1: 1571, v1: 4240, x2: 9023, v2: 4234))
