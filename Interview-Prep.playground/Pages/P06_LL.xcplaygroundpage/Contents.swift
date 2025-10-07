//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 P06 (*) Find out whether a linked list is a palindrome.
 Example:

 List(1, 2, 3, 2, 1).isPalindrome()
 Result:

 true
 Implementation:

 extension List where T:Equatable {
     func isPalindrome() -> Bool {
         ...
     }
 }
 Note: Requires list elements to conform to Equatable.
 */

class List<T> {
    var value: T?
    var next: List?
    var previous: List?
    
    init(value: T? = nil, next: List? = nil, previous: List? = nil) {
        self.value = value
        self.next = next
        self.previous = previous
    }
}

// Equatable is a protocol in Swift that allows to check if 2 values of the same type are equal using the == operator

extension List where T: Equatable {
    func isPalindrome() -> Bool {
        if var firstNode: List? = self, var lastNode: List? = self {
            while let nextNode = lastNode?.next {
                lastNode = nextNode
            }
            while firstNode !== lastNode, firstNode != nil, lastNode != nil {
                if firstNode!.value != lastNode!.value {
                    return false
                }
            }
        }
        return true
    }
}

let node1 = List(value: 1)
let node2 = List(value: 2)
let node3 = List(value: 3)
let node4 = List(value: 2)
let node5 = List(value: 1)

let list1 = List(value: 1, next: node2, previous: node1)
list1.next?.next = node3
list1.next?.next?.next = node4

print(list1.isPalindrome())
