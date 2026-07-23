//: [Previous](@previous)

import Foundation

//: [Next](@next)

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
print(index)
let beginning = greeting[..<index]
let beginning2 = greeting[index]
print(beginning2)
let newString = String(beginning)
print(newString)

let quotation = "We're a lot alike, you and I."
let sameQuotation = "We're a lot alike, you and I."
if quotation == sameQuotation {
    print("These two strings are considered equal")
}

func biggerIsGreater(w: String) -> String {
    // word is greater than the original word
    // the smallest word that meets the first condition
    // swap the last letter
    
    var end = w.endIndex
    var beforeEnd = w.index(w.endIndex, offsetBy: -1)
    var characters = Array(w)
    let lastCharacter = characters.count - 1
    let beforeLastChar = characters.count - 2
    characters.swapAt(lastCharacter, beforeLastChar)
    
    print(characters)
    for index in w.indices {
//        print(w[index])
        
    }
    return ""
}
print(biggerIsGreater(w: "abcde"))
