//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*  MARK: Simple Values
    let - constant, immutable, cannot be modified
    var - variable, mutable, can be modified
    If the initial value doesn't provide enough information (or if there isn't an initial value), specify the type by writing it after the variable, separated by a colon.
 */

let imlicitInteger = 70
let explicitInteger: Double = 70

// Create a constant with an explicit type of Float and a value of 4
// Values are never implicitly converted to another type. If you need to convert it to a different type, explicitly make an instance of the desired type.
// In Swift the types need to be compatible for the Binary Operators to work correctly that's why if there are different types, they need to be explicitly converted as the example below
// Binary Operators: +, -, =,

// implicit - closed meaning
// explicit - open meaning

let label = "The height is " // String
let height = 5.5 // Double or Float
let heightLabel = label + String(height)
print(heightLabel)




