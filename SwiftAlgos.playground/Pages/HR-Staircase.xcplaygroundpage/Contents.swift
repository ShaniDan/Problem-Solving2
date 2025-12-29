//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Staircase detail

 This is a staircase of size : n = 4

    #
   ##
  ###
 ####
 Its base and height are both equal to . It is drawn using # symbols and spaces. The last line is not preceded by any spaces.

 Write a program that prints a staircase of size .
 */

func staircase(n: Int) -> Void {
    // Write your code here
//    if 0 < n {
        for num in 1...n {
            print(String(repeating: " ", count: n-num)
                   + String(repeating: "*", count: num))
        }
//    }
}
staircase(n: 8)

for num in 1...8 {
    print(num)
    // 7 spaces first iteration
    // 6 spaces second iteration and etc
    print(String(repeating: "", count: 8-num)
          //prints the number in order
          + String(repeating: "*", count: num))
    
}

struct User {
    var name: String
    var age: Int
}

let users = [
    User(name: "Someone", age: 20),
    User(name: "Someone2", age: 21),
    User(name: "Someone2", age: 22)
]

let names = users.map(\.age)
print(names)

let numbers = [1, 2, 3, 4]
let newNumbers = numbers.map { $0 * 2 }
// map doesn't modify an array
numbers.map { $0 * 2 }
print(numbers)
//let sum = numbers.reduce(into: 0) {$0 + $1.age}
