//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


func firstAdd(_ a: Int, _ b: Int) -> Int { return a + b }

// a function that takes two Int parameters and returns an Int

let secondAdd: (Int, Int) -> Int = { a, b in return a + b }

// 

let thirdAdd = { (a: Int, b: Int) -> Int in return a + b }

let fourthAdd: (Int, Int) -> Int = { $0 + $1 }


print(firstAdd(2, 3))
print(secondAdd(2, 2))
print(thirdAdd(2, 2))
print(fourthAdd(2, 2))
