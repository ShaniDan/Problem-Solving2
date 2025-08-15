//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/* MARK: Generic singly linked list node.
 line 20 -> declares a generic class named Node that can store any type (Value)
 line 22 -> public variable value holds the data of the node like the generic type Value(Int, String or a custom object)
 line 23 -> is the reference to the next node. It's optional because the last node's next will be nil.
 line 25 -> defines the initializer for the node
 lines 26-27 -> assign the input parameters to the class properties inside the initializer. We need initializer when we use the class which is a reference type
 line 31 -> is the extension that adds the CustomStringConvertible protocol that lets customize how the node is printed (e.g., via print(node))
 guard statement means if there is no next node, return just the value as a string. This is the bext case for recursion.
 next line means if next exists, return a string that includes -> the current value
 next line is calling the .description on the next node recursively
 */


// Value in the below code uses generic type parameter that can be anything such as Int, String or MyCustomeClass

//public class Node<Value> {
//    
//    public var value: Value
//    public var next: Node?
//    
//    public init(value: Value, next: Node? = nil) {
//        self.value = value
//        self.next = next
//    }
//}
//
//extension Node: CustomStringConvertible {
//    public var description: String {
//        guard let next else {
//            return "(\(value))"
//        }
//        return "(\(value)) -> \(next) "
//    }
//}
//
//public struct LinkedList<Value> {
//    public var head: Node<Value>?
//    public var tail: Node<Value>?
//    
//    public init() {}
//    
//    public var isEmpty: Bool {
//        head == nil
//    }
//}
//
//let node3 = Node<String>(value: "three")
//let node2 = Node<String>(value: "two", next: node3)
//let node1 = Node<String>(value: "one", next: node2)
//
//print(node1)
//
//extension LinkedList: CustomStringConvertible {
//    
//    public var description: String {
//        guard let head else {
//            return "Empty list"
//        }
//        return String(describing: head)
//    }
//}

/* NOTE: There are 3 ways to add values to a linked list, each having unique performance characteristics:
    1. push: Adds a value at the front of the list
    2. append: Adds a value at the end of the list
    3. insert(after:): Adds a value after a particular list node.
 */

/* NOTE: PUSH OPERATIONS
        Head-first insertion
 */

//public func push(_ value: Value) {
//    head = Node(value: value, next: head)
//    
//    if tail == nil {
//        tail = head
//    }
//}


// link to the youtube tutorial - https://www.youtube.com/watch?v=IpB6UE5syQU&list=PLpu4BAmG9T1qCvGW6JH3hjfW7A1D8bUEH&index=3

// explain this to a mentor

public class LLNode<T> {
    // value that contains a value for each of the node and it can be any type because <T> is a generic.
    var value: T
    // next is a connector to the next node. "?" optional represents "no node" state safely
    var next: LLNode?
    var previous: LLNode?
    
    // initializer is needed if not all stored properties have default values. The initializer is responsible for ensuring all stored properties are assigned a value before the initializer completes.
    
    public init(value: T) {
                
        self.value = value
    }
}

["test1", "test2", "test3"]

// define a linked List

public class LinkedList2<T> {
    public typealias Node = LLNode<T>
    private var head: Node?
    
    public var first: Node? {
        return head
    }
    
    public var last: Node? {
        // check if the head exists in the node
        guard var node = head else { return nil }
        while let next = node.next {
            node = next
        }
        return node
    }
    
    
    // appending nodes to the linked list

    public func append(value: T) {
        // newNode is equal to Node that takes the value of T so we'll pass in the value
        let newNode = Node(value: value)
        if let lastNode = last {
            // one node in the list
            newNode.previous = lastNode
            lastNode.next = newNode
        } else {
            // no nodes in list
            head = newNode
        }
    }
}


// this custom struct can be passed to the list below
//struct hello {
//    var string: String
//}

// you can pass in the custom struct to below
// because the class LinkedList is a generic it's versatile and can take any type
// we are assigning LinkedList class to the list

let list = LinkedList2<String>()
list.first // this will return nil
list.last // will return nil as well
// we'll pass in string because that's what we assigned in the list
list.append(value: "some text")
