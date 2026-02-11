//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func bigSorted2(unsorted: [String]) -> [String] {
    return unsorted.sorted { $0.localizedStandardCompare($1) == .orderedAscending }
}
print(bigSorted2(unsorted: ["31415926535897932384626433832795", "1", "3", "10", "3", "5"]))
