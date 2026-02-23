//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// This didn't pass all the test cases
func isAlphabeticPalindrome(code: String) -> Bool {
    var result = true
    var caseSense = code.lowercased()
    var letters = String(caseSense.unicodeScalars.filter(CharacterSet.letters.contains))
    print(letters)
    if String(letters.reversed()) == letters {
        print(1)
    } else {
        print(0)
    }
    return result
}
print(isAlphabeticPalindrome(code: "A1b2B!a"))
