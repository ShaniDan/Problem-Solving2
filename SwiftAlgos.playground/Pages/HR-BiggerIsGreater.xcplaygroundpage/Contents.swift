//: [Previous](@previous)

import Foundation

//: [Next](@next)

let greeting = "Hello, world!"
let index = greeting.firstIndex(of: ",") ?? greeting.endIndex
print(index)
let beginning = greeting[..<index]
print(beginning)
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
    
    print(w.endIndex)
    
    for index in w.indices {
        print(w[index])
    }
    return ""
}
print(biggerIsGreater(w: "abcd"))
