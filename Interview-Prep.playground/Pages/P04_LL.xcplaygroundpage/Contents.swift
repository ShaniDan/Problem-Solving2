//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 P04 (*) Find the number of elements of a linked list.
 Example:

 List(1, 1, 2, 3, 5, 8).length
 Result:

 6
 Implementation:

 extension List {
     var length: Int {
         ...
     }
 }
 */

//MARK: This is the body of the Linked List

class List<T: Comparable> {
    var value: T?
    var next: List<T>?
    
    init(value: T? = nil, next: List<T>? = nil) {
        self.value = value
        self.next = next
    }
}

// to traverse the linked list I need to follow the next pointers, not just a value
extension List {
    var length: Int {
        // need to check if head is nil
        var current: List<T>? = self
//        guard var current = current?.next else { return 0 }
        var count = 0
        while current != nil {
            count += 1
            current = current?.next
        }
        return count
    }
}

// if I want to use for loop

extension List: Sequence {
    func makeIterator() -> AnyIterator<List<T>> {
        var current: List<T>? = self
        return AnyIterator {
            defer { current = current?.next }
            return current
        }
    }
    
    var count: Int {
        var countLL = 0
        for _ in self { countLL += 1 }
        return countLL
    }
}

// create nodes
let node1 = List(value: 1)
let node2 = List(value: 2)
let node3 = List(value: 3)
let node4 = List(value: 4)
let node5 = List(value: 5)

// this is how the nodes are chained
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5

print(node1.length)
print(node1.count)
