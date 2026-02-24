//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func mergeHighDefinitionIntervals(intervals: [[Int]]) -> [[Int]] {
    var result = [[Int]]()
    
    let flatIntervals = intervals.flatMap { $0 }
    print(flatIntervals)
    
    var valid: [Int] = [flatIntervals[0]]
    
    for num in 2..<flatIntervals.count {
        if flatIntervals[num] > flatIntervals[num-1] {
            valid.append(flatIntervals[num])
        }
    }
    
    for i in stride(from: 0, to: valid.count, by: 2) {
        let pair = [valid[i], valid[i+1]]
        result.append(pair)
    }
    print(valid)
    return result
}
print(mergeHighDefinitionIntervals(intervals: [[1, 3], [2, 6], [8, 10], [15, 18]]))

