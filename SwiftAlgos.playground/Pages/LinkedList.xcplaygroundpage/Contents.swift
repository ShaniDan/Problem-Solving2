//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/* Question: Reverse a Linked List
Given a singly linked list, write a function that reverses it in place and returns the new head. */

class Node {
    var value: Int
    var next: Node?
    
    init(value: Int) {
        self.value = value
    }
}

let node1 = Node(value: 1)
let node2 = Node(value: 2)
let node3 = Node(value: 3)

node1.next = node2
node2.next = node3

func reverseList(_ head: Node?) -> Node? {
    var prev: Node? = nil
    var current = head
    var next: Node? = nil
    
    while let node = current {
        next = node.next
        node.next = prev
        prev = node
        current = next
    }
    return prev
}



func printList(_ head: Node?) {
    var current = head
    while let node = current {
        print("\(node.value) ->", terminator: " ")
        current = node.next
    }
    print("nil")
}

printList(reverseList(node1)) // 3 -> 2 -> 1 -> nil
