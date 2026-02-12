//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func insertionSort(arr:[Int], n: Int) -> [Int] {
    // result is of type integer
    // var result: Int
    var result = [Int]()
    for index in 0..<arr.count {
        var array = arr
        print(index)
        array.insert(n, at: 4)
        result = array
    }
    
    return result
}
print(insertionSort(arr: [1,2,4,5,3], n: 5))
