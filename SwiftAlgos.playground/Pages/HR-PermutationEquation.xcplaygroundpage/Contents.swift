//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func permutationEquation(p: [Int]) -> [Int] {
    var result = [Int]()
    // position of an element
    // last element becomes first and the rest moves
//    var mutP = p
//    let last = mutP.removeLast()
//    mutP.insert(last, at: 0)
//    print(mutP)
    
    var dict = [Int: Int]()
    
    for (index, value) in p.enumerated() {
        dict[index + 1] = value
    }
    print(dict)
    return result
}
print(permutationEquation(p: [5,2,1,3,4]))
