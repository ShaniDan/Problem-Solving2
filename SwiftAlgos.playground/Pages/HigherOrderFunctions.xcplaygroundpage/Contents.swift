//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let names = ["alice", "bob", "charlie", "dave"]

let upperCase = names.map { $0.capitalized }
let three = upperCase.filter { $0.count > 3 }

print(three)

