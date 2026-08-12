//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Associated Types - Generics for Protocols
 Standard generics (<T>) work on concrete types (structs, classes, enums). But protocols can't use <T> syntax - they use associated types instead. This is because a protocol defines a contract that multiple types will conform to, and each conforming type may use a different concrete type for the placeholder.
 */
/*
 Create a protocol `Summable` with an associated type `Value` constrained to `Numeric`. It should require a `values` property of type [Value] and a `total()` method returning Value. Implement it with a struct `NumberBag` for Int. Create a bag with [5, 10, 15] and print the total.
 */
protocol Summable {
    associatedtype Value: Numeric
    
    var values: [Value] { get }
    func total() -> Value
}

struct NumberBag {
    var values: [Int]
    func total() -> Int {
        return values.reduce(0, +)
    }
}

let bag = NumberBag(values: [5, 10, 15])
print(bag.total())


