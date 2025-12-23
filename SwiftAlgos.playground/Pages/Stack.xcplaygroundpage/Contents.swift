//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
public struct Stack<T> {
    fileprivate var array = [T]()
    
    public var isEmpty: Bool {
        return array.isEmpty
    }
    
    public var count: Int {
        return array.count
    }
    
    public mutating func push(_ element: T) {
        array.append(element)
    }
    
    public mutating func pop() -> T? {
        return array.popLast()
    }
    // this is optional T? that's why it prints optional()
    public var top: T? {
        return array.last
    }
}

func checkStack() {
    var stack = Stack<Int>()
    stack.push(10)
    print(stack.top!)
    stack.push(20)
    print(stack.top!)
    print(stack.count)
    stack.pop()
    print(stack.count)
    
}

checkStack()



func findNumber() -> Int {
    var numbers = [2, 4, 5, 7, 8]
    let index = numbers.firstIndex(of: 8)!
    return index
}

print(findNumber()) // prints 4
