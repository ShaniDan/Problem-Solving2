//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func migratoryBirds(arr: [Int]) -> Int {
    var result = 0
    // tuple
    let occurence = arr.map { ($0, 1) }
    // dictionary
    let counts = Dictionary(occurence, uniquingKeysWith: +)
    
    guard let maxCount = counts.values.max() else { return 0 }
//    print(maxCount)
    
    let tiedKeys = counts.filter { $0.value == maxCount }.map{ $0.key }

    print(counts)
    return tiedKeys.min() ?? 0
}
print(migratoryBirds(arr: [1,4,4,4,3]))
