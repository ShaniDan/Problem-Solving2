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

public class Node<Value> {
    
    public var value: Value
    public var next: Node?
    
    public init(value: Value, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}

extension Node: CustomStringConvertible {
    public var description: String {
        guard let next else {
            return "(\(value))"
        }
        return "(\(value)) -> \(next) "
    }
}

public struct LinkedList<Value> {
    public var head: Node<Value>?
    public var tail: Node<Value>?
    
    public init() {}
    
    public var isEmpty: Bool {
        head == nil
    }
}

let node3 = Node<String>(value: "three")
let node2 = Node<String>(value: "two", next: node3)
let node1 = Node<String>(value: "one", next: node2)

print(node1)

extension LinkedList: CustomStringConvertible {
    
    public var description: String {
        guard let head else {
            return "Empty list"
        }
        return String(describing: head)
    }
}

/* NOTE: There are 3 ways to add values to a linked list, each having unique performance characteristics:
    1. push: Adds a value at the front of the list
    2. append: Adds a value at the end of the list
    3. insert(after:): Adds a value after a particular list node.
 */

/* NOTE: PUSH OPERATIONS
        Head-first insertion
 */

public func push(_ value: Value) {
    head = Node(value: value, next: head)
    
    if tail == nil {
        tail = head
    }
}

