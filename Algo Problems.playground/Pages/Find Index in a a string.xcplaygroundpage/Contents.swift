//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Finding the Index of the First Occurrence
 To get the position of the first occurrence of a specific character in the string:
 */

let text = "This is a long string of characters."
let characterToFind: Character = "o"

if let index = text.firstIndex(of: characterToFind) {
    let position = text.distance(from: text.startIndex, to: index)
    print("The index of '\(characterToFind)' is \(position)")
} else {
    print("Character not found")
}

/*
 Finding the Index of Every Occurrence
 If you want to find the index of every occurrence of a character in the string, you can loop over the string with enumerated():
 */

let text = "This is a long string of characters."
let characterToFind: Character = "s"

for (index, character) in text.enumerated() {
    if character == characterToFind {
        print("Found '\(characterToFind)' at index \(index)")
    }
}

/*
 To get the index of an element at any position within a String, you can use Swift’s index(_:offsetBy:) method. This method helps you access elements at a specific index, even in long strings, by calculating the offset from the start of the string.

 Here’s how you can find the character at a specific position:
 */

let text = "This is a long string with many characters."
let offset = 10 // Position you want to get (e.g., 10th character)

// Check if the offset is within bounds
if offset < text.count {
    let index = text.index(text.startIndex, offsetBy: offset)
    let character = text[index]
    print("Character at index \(offset) is '\(character)'")
} else {
    print("Offset is out of bounds.")
}
