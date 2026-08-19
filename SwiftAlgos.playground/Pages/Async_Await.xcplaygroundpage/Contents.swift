//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Create an async function `computeSum` that takes two Ints, simulates work (no actual delay needed), and returns their sum. Call it from a Task and print the result of computeSum(15, 25).
 */
// Create async function computeSum
func computeSum(_ num1: Int, _ num2: Int) async -> Int {
    return num1 + num2
}

Task {
    let result = await computeSum(15, 25)
    print(result)
}
