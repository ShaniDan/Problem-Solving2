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
    
    init(value: T, next: List<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension List {
    
    func flatten() {
        print(#function, "current node: \(value)")
    }
}

// create nodes
let node1 = List(value: 1)
let node2 = List(value: 2)
let node3 = List(value: 3)

node1.next = node2
node2.next = node3

