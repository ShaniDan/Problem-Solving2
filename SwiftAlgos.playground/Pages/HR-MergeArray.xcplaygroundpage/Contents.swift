//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func mergeHighDefinitionIntervals(intervals: [[Int]]) -> [[Int]] {
    // define a variable that holds the result
    var result = [[Int]]()
    //
    let flatIntervals = intervals.flatMap { $0 }
    print(flatIntervals)
    
    var valid: [Int] = [flatIntervals[0]]
    
    // iterate over flatIntervals starting at index 1
    for num in 2..<flatIntervals.count {
        // check if previous element is less than the current
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


func mergeHighDefinitionIntervals2() -> [[Int]] {
    
    // The ranges that you access by using ranges never overlap, are never empty, and are always in increasing order.
    
    var intervals = RangeSet<Int>()
    var result = [[Int]]()
    
    intervals.insert(contentsOf: 1..<4)
    intervals.insert(contentsOf: 2..<7)
    intervals.insert(contentsOf: 8..<11)
    intervals.insert(contentsOf: 15..<19)
    
    print(intervals.ranges)

    let intervalArray = intervals.ranges.map { [$0.lowerBound, $0.upperBound-1] }
    print(intervalArray)
    return result
}
print(mergeHighDefinitionIntervals2())
