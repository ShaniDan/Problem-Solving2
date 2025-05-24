//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let fizz = 3
let buzz = 5

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5) {
        print("FizzBuzz!")
    } else if i.isMultiple(of: 3) {
        print("Fizz!")
    } else if i.isMultiple(of: 5) {
        print("Buzz")
    } else {
        print(i)
    }
}


func fizzBuzz(upTo number: Int) {
    print("FizzBuzz up to \(number)")
    
    for num in 0...number {
        if num.isMultiple(of: 3) && num.isMultiple(of: 5) {
            print("FizzBuzz")
        } else if !num.isMultiple(of: 3) && !num.isMultiple(of: 5) {
            print(num)
        } else if num.isMultiple(of: 3) {
            print("Fizz")
        } else if num.isMultiple(of: 5) {
            print("Buzz")
        }
    }
}

print(fizzBuzz(upTo: 15))
