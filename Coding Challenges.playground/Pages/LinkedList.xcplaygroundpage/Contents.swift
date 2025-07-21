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
            return "\(value)"
        }
        return "\(value) ->" + String(describing: next) + " "
    }
}
