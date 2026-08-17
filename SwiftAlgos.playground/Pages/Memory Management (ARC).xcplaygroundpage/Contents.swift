//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Each class instance has a reference count.
 When it reached zero, the instance is deallocated
 */

class Person {
    let name: String
    init(name: String) {
        self.name = name
        print("\(name) is initialized")
    }
    deinit {
        print("\(name) is deallocated")
    }
}

var ref1: Person? = Person(name: "Alice")
var ref2 = ref1
ref1 = nil
ref2 = nil

/*
 Create a class `Node` with a `value: String` and a `var next: Node?` property. Create two nodes "A" and "B", link A.next = B. Print A's value and A.next's value.
 */

class Node {
    var value: String
    var next: Node?
    
    init(value: String) {
        self.value = value
    }
}
var first = Node(value: "1")
var second = Node(value: "2")
first.next = second

print(first.value)
print(first.next!.value)
