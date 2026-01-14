//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func getTotal(a: [Int], b: [Int]) -> Int {
    var result = 0
    var range = [Int]()
    var output = [Int]()
    var end = a.last
    var start = b.first!
    
    for number in end!...start {
        // filter out only even numbers
        guard (number % 2) == 0 else {
            continue
        }
        range.append(number)
    }
    print(range)
    for number in range {
        // $0 is a 1st parameter in an array
        // allSatisfy returns true if the closure returns true for every element
        if a.allSatisfy({ number % $0 == 0}) {
            output.append(number)
        }
    }
    print(output)
    return result
}
print(getTotal(a: [2, 6], b: [24, 36]))
