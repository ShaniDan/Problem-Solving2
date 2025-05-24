//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// solution with Array
func challenge1a(input: String) -> Bool {
    var alreadySeenLetters = [Character]()
   // b
    for letter in input {
//        print("Checking to see if \(letter) is in \(alreadySeenLetters)")
        if alreadySeenLetters.contains(letter) {
//            print("Found \(letter)")
            return false
        }
        // a
        alreadySeenLetters.append(letter)
    }
    return true
}
print(challenge1a(input: "abca"))
print(challenge1a(input: "abcdefghijklmnopqrstuvwxyz"))


// solution with Set
func challenge1b(input: String) -> Bool {
    return Set(input).count == input.count
}
print(challenge1b(input: "Hello, world"))
