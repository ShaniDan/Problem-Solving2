//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Result Type - Typed Success and Failure
 Result<Success, Failure> is a generic enum that captures either a success value or a typed error.
 Unlike throws (which erases the error type to any Error), Result preserves the exact error type, enabling exhaustive error handling and making error paths explicit in the type signature
 */

// Using Result
enum ValidationError: Error {
    case tooShort
}

func validate(password: String) -> Result<String, ValidationError> {
    guard password.count >= 8 else { return .failure(.tooShort) }
    return .success(password)
}
    switch validate(password: "Swift123") {
    case .success(let pass): print("Valid: \(pass)")
    case .failure(let err): print("Invalid: \(err)")
}

let result = validate(password: "Swift123")
let uppercased = result.map { $0.uppercased() }

do {
    let password = try result.get()
    print(password)
} catch {
    print("Error \(error)")
}


enum DivisionError: Error {
    case divisionByZero
}
// Create divide function
func divide(_ a: Double, _ b: Double) -> Result<Double, DivisionError> {
    guard b != 0 else { return .failure(.divisionByZero) }
    return .success(a / b)
}
// Test it
switch divide(10, 3) {
case .success(let value):
    print(String(format: "%.4f", value))
case .failure(let error):
    print(error)
}
