//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func utopianTree(n: Int) -> Int {
    var result = 0
    for number in 0...n {
        // that's how to check if the number is even
        if number % 2 == 0 {
            result += 1
        } else {
            result *= 2
        }
//        print(result)
    }
    return result
}
print(utopianTree(n: 0))
print(utopianTree(n: 1))
print(utopianTree(n: 4))
