//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// https://www.enekoalonso.com/projects/99-swift-problems/#linked-lists
// P02 (*) Find the last but one element of a linked list.

// Define a linked list class List with a generic <T> type, I need 2 properties (value variable with a generic type(menas any type), next which is of type List) in the class List

class List<T> {
    var value: T
    var next: List<T>?
    
    init(value: T, next: List<T>? = nil) {
        self.value = value
        self.next = next
    }
}

//
extension List where T: Collection {
    func pennultimate() -> T.Element? {
        if value.count < 2 {
            return nil
        }
        let index = value.index(value.startIndex, offsetBy: 2)
        // This one works the same way
        // let index = value.index(value.endIndex, offsetBy: -2)
        return value[index]
    }
}

let list = List(value: [1, 2, 3, 4])

print(list.pennultimate()!)
