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

/*
 Create a string "Swift,UIKit,SwiftUI". Split it by comma into an array. Join the array with " & " and print the result: "Swift & UIKit & SwiftUI".
 */

let string = "Swift,UIKit,SwiftUI"
// split changes the String type into a [Substring]
let split = string.split(separator: ",")
print(split)
let stringArray = split.map(String.init)
print(stringArray)
let joined = split.joined(separator: " & ")
print(joined)


