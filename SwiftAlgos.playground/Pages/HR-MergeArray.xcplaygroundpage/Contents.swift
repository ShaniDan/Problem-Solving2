//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func mergeHighDefinitionIntervals(intervals: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    var test = [Int]()
    
    for array in intervals {
        for number in array {
            test.append(number)
        }
    }
    var notValid: [Int] = [test[0]]
    for num in 1..<test.count {
        if test[num] > test[num-1] {
            notValid.append(test[num])
        }
    }
    
    for i in stride(from: 0, to: notValid.count, by: 2) {
        let pair = [notValid[i], notValid[i+1]]
        result.append(pair)
    }
    print(test)
    print(notValid)
    return result
}
print(mergeHighDefinitionIntervals(intervals: [[1, 3], [2, 6], [8, 10], [15, 18]]))
