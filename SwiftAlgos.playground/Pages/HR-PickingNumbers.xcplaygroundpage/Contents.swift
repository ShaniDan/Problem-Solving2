//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func pickingNumbers(a: [Int]) -> Int {
    let middle = a.count / 2
    let firstHalf = Array(a[..<middle])
    print(firstHalf)
    let secondHalf = Array(a[middle...])
    
    return max(firstHalf.count, secondHalf.count)
}
print(pickingNumbers(a: [1,1,2,2,4,4,5,5,5]))
