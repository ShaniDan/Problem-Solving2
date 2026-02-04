//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func circularArrayRotation(a: [Int], k: Int, queries: [Int]) -> [Int] {
    var result = [Int]()
    var a2 = a
    
    for _ in 1...k {
        let changedArray: Optional<Int> = a2.popLast()
        if let unwrappedChangedArray = changedArray {
            a2.insert(unwrappedChangedArray, at: 0)
        }
    }
//    switch changedArray {
//    case .some(let int):
//        print("changedArray was \(int)")
//    case .none:
//        print("changedArray was nil")
//    }
    
    for index in queries {
        result.append(a2[index])
    }
    print(a2)
    return result
}
print(circularArrayRotation(a: [3, 4, 5], k: 2, queries: [1,2]))

