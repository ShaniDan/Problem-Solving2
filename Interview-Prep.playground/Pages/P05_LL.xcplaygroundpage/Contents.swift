//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 P05 (*) Reverse a linked list.
 Example:

 List(1, 1, 2, 3, 5, 8).reverse()
 Result:

 List(8, 5, 3, 2, 1, 1)
 Implementation:

 extension List {
     func reverse() {
         ...
     }
 }
 */

class List<T> {
    var value: T?
    var next: List?
    //MARK: This way swift complains of not having a default value when creating nodes
//    init(value: T, next: List?) {
//        self.value = value
//        self.next = next
//    }
    // MARK: This way I'm assigning a default value of nil and that's why swift knows that the value = 1 and next just takes its default value (nil)
    init(value: T? = nil, next: List? = nil) {
        self.value = value
        self.next = next
    }
}

extension List where T: Comparable {
    
    func last() -> List<T> {
        // define an empty node?
        var node: List<T>? = self
        while let next = node?.next {
            node = next
        }
        return node!
    }
    
    /// Convenience: last value
       func lastValue() -> T {
           last().value!
       }

       /// Reverse the list starting at `self` and return the **new head**.
       /// (Because classes are reference types, this mutates links of the chain.)
       func reversedHead() -> List<T> {
           var prev: List<T>? = nil
           var current: List<T>? = self
           while let node = current {
               let nxt = node.next     // remember next
               node.next = prev        // reverse pointer
               prev = node             // advance prev
               current = nxt           // advance current
           }
           // `prev` is the new head
           return prev!
       }
}

// create nodes
let node1 = List(value: 1)
let node2 = List(value: 1)
let node3 = List(value: 2)
let node4 = List(value: 3)
let node5 = List(value: 5)
let node6 = List(value: 8)

// chain the nodes
node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6

print(node1.lastValue())            // 3
let head2 = node1.reversedHead()    // list is now 3 -> 2 -> 1
print(head2.value!)               // 3
print(head2.next!.value!)         // 2
print(head2.next!.next!.value!)   // 1
