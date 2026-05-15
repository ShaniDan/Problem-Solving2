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
    
    var position = [Int: Int]()
    
    for (index, value) in p.enumerated() {
        position[value] = index + 1
    }
    print(position)
    for x in 1...p.count {
        let first = position[x]!
        print("x:", x, "-> 1", first)
        let second = position[first]!
        print("x:", x, "-> 2", second)

    }
   
    return result
}
print(permutationEquation(p: [5,2,1,3,4]))
