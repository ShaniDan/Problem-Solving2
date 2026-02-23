//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func countResponseTimeRegressions(responseTimes: [Int]) -> Int {
    // Write your code here
    var result = 0
    var dropFirst = responseTimes.dropFirst()
    if dropFirst[0] > responseTimes.first ?? 0 {
        result += 1
    } else if dropFirst[1] > responseTimes.first ?? 0 {
        result += 1
    }
    return result
}

print(countResponseTimeRegressions(responseTimes: [100, 200, 150,300]))
