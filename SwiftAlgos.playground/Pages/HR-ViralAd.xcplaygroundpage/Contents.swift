//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func viralAdvertising(n: Int) -> Int {
    var result = 0
    var shared = 5
    
    for num in 1...n {
        let liked = shared / 2
        print(liked)
        result += liked
//        print(result)
        shared = liked * 3
    }
    
//    print(shared)
    
    return result
}
print(viralAdvertising(n: 5))
