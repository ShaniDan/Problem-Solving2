//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Key Path - Type-Safe Property Reference
 
 Key paths(\Type.property) are the first-class objects that reference a property without invoking it.
 Swift key paths carry full type information
 */

// Basic Key Paths
struct User {
    var name: String
    var age: Int
}

let user = User(name: "Alice", age: 30)
print(user[keyPath: \User.name])

// Key Paths with Collections
let users = [User(name: "Alice", age: 30), User(name: "Bob", age: 25)]
let names = users.map(\.name)
print(names)
