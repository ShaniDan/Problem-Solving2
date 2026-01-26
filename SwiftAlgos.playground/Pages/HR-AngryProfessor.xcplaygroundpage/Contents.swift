//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func angryProfessor(k: Int, a: [Int]) -> String {
    var onTime = [Int]()
    
    for number in a {
        if number <= 0 {
            onTime.append(number)
        }
    }
    if onTime.count >= k {
        // why code doesn't compile if I use print() here
        return "NO"
    } else {
        return "YES"
    }
}
print(angryProfessor(k: 3, a: [-1, -3, 4, 2]))
