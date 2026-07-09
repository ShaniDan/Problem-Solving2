//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func cutTheSticks(arr: [Int]) -> [Int] {
    var numberOfCuts = 0
    var result1 = [Int]()
    var smallest = arr.min()
    for num in arr {
        var result = num - (smallest ?? 0)
        print(result)
        numberOfCuts += 1
        result1.append(numberOfCuts)
    }
    return result1.sorted {$0 > $1}
}
print(cutTheSticks(arr: [5,4,4,2,2,8]))
