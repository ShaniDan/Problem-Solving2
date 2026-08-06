//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Generics let you write one function or type that works with any type while remaining fully type-safe. Under the hood, the Swift compiler uses monomorphization - it generates specialized copies of your generic code for each concrete type used, so Stack<Int> and Stack<String> become completely separate, optimized implementations with zero runtime overhead.
 */
/*
 Create a generic function `firstAndLast` that takes an array of any type and returns a tuple of the first and last elements (as optionals). Test it with [10, 20, 30] and print both values.
 */

func firstAndLast<T>(_ array: [T]) -> (first: T?, last: T?) {
    return (array.first, array.last)
}
let result = (firstAndLast([10, 20, 30]))
// this needs to be unwrapped or default provided because it's defined as optional
print(result.first!)
print(result.last!)
