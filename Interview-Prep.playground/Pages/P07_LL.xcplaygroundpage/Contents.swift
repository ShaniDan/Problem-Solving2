//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 P07 (**) Flatten a nested linked list structure.
 Example:

 List<Any>(List<Any>(1, 1), 2, List<Any>(3, List<Any>(5, 8))).flatten()
 Result:

 List(1, 1, 2, 3, 5, 8)
 Implementation:

 extension List {
     func flatten() -> List {
         ...
     }
 }
 */

class List<T> {
    var value: T
    var next: List<T>?
    
    init(value: T, next: List<T>?) {
        self.value = value
        self.next = next
    }
}

extension List {
    func flatten() {
        
    }
}
