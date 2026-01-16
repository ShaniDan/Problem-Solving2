//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// MARK: Passed all the test cases
func hurdleRace(k: Int, height: [Int]) -> Int {
    var result = 0
    var numbers = [Int]()
    // make the jump(k) the same number and determine how many jumps it takes to make the number the same
    let max2 = height.max()
    if k < max2! {
        let sum = max2! - k
        result = sum
    } else {
        return 0
    }
    return result
}
print(hurdleRace(k: 7, height: [2,5,4,5,2]))
