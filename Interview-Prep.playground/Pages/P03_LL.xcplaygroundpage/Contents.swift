//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 P03 (*) Find the Kth element of a linked list.
 By convention, the first element in the list is element 0. Use Swift subscripts to get the value from the linked list.

 Example:

 let list = List(1, 1, 2, 3, 5, 8)
 list[2]
 
 Result:

 2
 */

// Define a linked list class with 2 properties value and next

class List<T> {
    var value: T
    var next: List?
    
    // it's showing error "Missing argument for parameter 'next' in call" if "next: List?" when creating nodes below but the error goes away if the next is defined like this "next: List<T>? = nil"
    
    init(value: T, next: List<T>? = nil) {
        self.value = value
        self.next = next
    }
}

extension List {
    var first: T? {
//        if let nextNode != next {
        return value
//        } else {
//            return value
//        }
    }
}

// MARK: This is how to move to the next node
extension List {
    var second: T? {
        if let nextNode = next {
            return nextNode.value
        } else {
            return nil
        }
    }
}

extension List {
    /* A subscript is syntactic sugar for accessing data with []
       Arrays and dictionaries already use it
     •    array[0] calls the subscript(_:) on Array.
     •    dictionary["key"] calls the subscript(_:) on Dictionary.
     By adding it to the List, I make the linked list feel like an aray, so I can write list[2] instead of calling a method
     */
    subscript(index: Int) -> T? {
        
    }
}

// Create nodes
let node1 = List(value: 1)
let node2 = List(value: 2)
let node4 = List(value: 3)

// Link nodes
node1.next = node2
node2.next = node4

// "!" force unwrap, "?" optional
print(node1.first!)
// changing node1 to node2, node3 and etc prints the next node
print(node1.second!)


