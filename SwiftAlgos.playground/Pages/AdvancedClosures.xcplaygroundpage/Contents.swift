//: [Previous](@previous)

import Foundation
import SwiftUI

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Advanced Closures - Capturing, Escaping, and Memory
 Closures are reference types that capture variables from their enclosing scope
 */
// Closures capture variables from their surrounding scope:
typealias Mikaela = () -> Int

func blah () -> Int {
    return 0
}

typealias Colour = Color
func makeCounter() -> Mikaela {
    var count = 0
    return {
        count += 1
        return count
    }
}

let counter = makeCounter()
print(counter())
print(counter())
print(counter())

// @escaping Closures
// A closure is escaping when it outlives the function that receives it:
var completionHandlers: [() -> Void] = []

@MainActor func addHandler(handler: @escaping () -> Void) {
    completionHandlers.append(handler)
}
addHandler {
    print("Task done!")
}
completionHandlers.first?()

// Capture Lists
var x = 10
let closure = { [x] in // Captures a COPY of x
    print(x)
}
x = 20
closure() // 10 is captured

// [weak self] - Avoiding Retain Cycles
// Use [weak self] whenever a closure is stored (as a property, in a collection, or by a framework) and references self

class DataLoader {
    var onComplete: (() -> Void)?
    
    func load() {
        onComplete = {[weak self] in
            guard let self = self else { return }
            self.handleResult()
        }
    }
    func handleResult() { print("Done") }
}

// Exercise
/*
 Create a function `makeMultiplier` that takes an Int and returns a closure that multiplies its input by that value. Create a tripler (multiply by 3) and print the result of tripler(7).
 */

// Create the makeMultiplier function
// -> (Int) -> Int means this function doesn't return a plain value - it returns another function, one that takes an Int and returns an Int

func makeMultiplier(_ num: Int) -> (Int) -> Int {
    return { number in
        return number * num
    }
}

let tripler = makeMultiplier(3)
print(tripler(7))


var fruits = ["apple", "blueberry", "orange", "kiwi"]

for fruit in fruits {
    if fruit.contains("a") {
        print(fruit)
    }
}

// gives a new array
print(fruits.filter { $0.contains("a")})

fruits.filter { fruit in
    fruit.contains("a")
}
