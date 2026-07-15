//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
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
