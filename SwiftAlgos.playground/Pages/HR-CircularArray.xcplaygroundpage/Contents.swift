//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    var a2 = a
    var result = [Int]()
    a2.swapAt(0, a2.count - 1)
    print(a2)
    return result
}
print(circularArrayRotation(a: [3, 4, 5], k: 2, queries: [1,2]))
