//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

struct Stack {
    private var items: [String] = []
    func peek() -> String {
        guard let topElement = items.first else { fatalError("This stack is empty.") }
        return topElement
    }
    mutating func pop() -> String {
        return items.removeFirst()
    }
    mutating func push(_ element: String) {
        items.insert(element, at: 0)
    }
}

var nameStack = Stack()

nameStack.push("Caleb")
nameStack.push("Charles")
nameStack.push("Tina")
print(nameStack.peek())
print(nameStack)
nameStack.pop()
print(nameStack)


//extension Stack: CustomStringConvertible {
//    var description: String {
//        let topDivider = "---Stack---\n"
//        let bottomDivider = "\n-----------\n"
//
//        let stackElements = array.joined(separator: "\n")
//
//        return topDivider + stackElements + bottomDivider
//    }
//}
