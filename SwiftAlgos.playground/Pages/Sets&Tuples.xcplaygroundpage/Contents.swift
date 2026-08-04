//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Create a Set of 3 colors: "Red", "Blue", "Green". Insert "Yellow", then print the count. On the next line, create a tuple `person` with name "Josh" and age 28, and print "Josh is 28".
 */
// set
var colors: Set = ["Red", "Blue", "Green"]
colors.insert("Yellow")
print(colors.count)
// tuple
let person = (name: "Josh", age: 28)
print("\(person.name) is \(person.age)")
