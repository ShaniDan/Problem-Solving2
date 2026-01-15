//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func migratoryBirds(arr: [Int]) -> Int {
    // tuple
    let occurence = arr.map { ($0, 1) }
    print(occurence)
    // dictionary
    let counts = Dictionary(occurence, uniquingKeysWith: +)
    print(counts)
    
    guard let maxCount = counts.values.max() else { return 0 }
//    print(maxCount)
    
    let tiedKeys = counts.filter { $0.value == maxCount }.map{ $0.key }

//    print(counts)
    return tiedKeys.min() ?? 0
}
print(migratoryBirds(arr: [1,4,4,4,3]))
