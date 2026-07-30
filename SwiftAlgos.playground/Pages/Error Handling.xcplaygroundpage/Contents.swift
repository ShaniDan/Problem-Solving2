//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

/* MARK: Error Handling - Typed Failures with throw/try/catch.
 Swift uses a robust error handling system where errors are typed values conforming to the Error protocol.
 Functions declare they can faild wiith throws, and callers must handle failures explicitly with try - the compiler won't let you ignore errors.
 
 Error types are mostly enums in Swift
 */

// Exercise

// Create an enum `MathError` with case `divisionByZero`. Write a function `divide(_ a: Int, by b: Int)` that throws if b is 0, otherwise returns a/b. Use do-try-catch to divide 10 by 0 and print "Error: Cannot divide by zero".

// Defining Errors
enum MathError: Error {
    case divisionByZero
}
// Throwing Functions
func divide(_ a: Int, _ b: Int) throws -> Int {
    guard b != 0 else {
        throw MathError.divisionByZero
    }
    return a / b
}
//Do-Try-Catch
do {
    let division = try divide(10, 2)
    print(division)
} catch {
    print("Error: Cannot divide by zero")
}
