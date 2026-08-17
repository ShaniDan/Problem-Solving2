//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Use struct value type:
 - Data models
 - Thread safety
 - Predictable behaviour
 
 Use class reference types
 - Shared mutable state
 - Identity matters
 - Inheritance needed
 */

/*
 Create a struct `Score` with a `value` property. Create variable a with value 10, assign a to b, change b to 20. Print both to demonstrate value semantics (a should still be 10).
 */
struct Score {
    var value: Int
}
var a = Score(value: 10)
var b = a
b.value = 20
print(a.value)
print(b.value)

class Score2: CustomStringConvertible {
    var value2: Int
    
    init(value2: Int) {
        self.value2 = value2
    }
    var description: String {
        return "Score2(value2: \(value2))"
    }
}

var a2 = Score2(value2: 10)
var b2 = a2
b2.value2 = 20
print(a2.value2)
print(b2.value2)
