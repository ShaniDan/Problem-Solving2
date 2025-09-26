//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// MARK: Find the last element of a linked list.

// Define the linked list class, <T>  means it can be type of any
class List<T> {
    var value: T
    var next: List<T>?
    
    init(value: T, next: List<T>? = nil) {
        self.value = value
        self.next = next
    }
}


extension List {
    var last: T? {
        if let next = next {
            return next.last
        } else {
            return value
        }
    }
}

// Create nodes
let node1 = List(value: 1)
let node2 = List(value: 1)
let node3 = List(value: 2)
let node4 = List(value: 3)
let node5 = List(value: 5)
let node6 = List(value: 8)

// Link nodes, that's how the nodes are linked
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6

// Get the last element
print(node1.last!)




