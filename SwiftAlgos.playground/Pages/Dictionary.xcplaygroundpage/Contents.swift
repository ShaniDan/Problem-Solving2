//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// Common Operations
var scores: [String: Int] = [
    "alice": 92,
    "bob": 85
]
// empty dictionary
var empty = [String: Int]()

/* 1. Word frequency counter
Given an array of words, count how many times each word appears using a dictionary. */

let words = ["apple", "banana", "apple", "cherry", "banana", "apple"]
var frequency: [String: Int] = [:]

for word in words {
    frequency[word, default: 0] += 1
}
//print(frequency)

/*
 2. Safe lookup

 Build a phone book. Look up a contact and handle the case where they don't exist using optional binding.
 */

var phoneBook: [String : String] = [:]

// Add entry
phoneBook["Anna"] = "111 - 010101"
phoneBook["John"] = "333 - 989989"

print(phoneBook)

if let phone = phoneBook[""] {
    print("It is valid")
} else {
    print("Not found")
}
/* 3. Invert a dictionary
Swap all keys and values in a [String: Int] dictionary to get a [Int: String]. */
var phone: [String: Int] = [:]
phone["888"] = 123
phone["000"] = 456

var inverted: [Int: String] = [:]
for (key, value) in phone {
    inverted[value] = key
}
print(inverted)


func wordFrequency(_ s: String) -> [String: Int] {
    var dict: [String: Int] = [:]
    let words = s.components(separatedBy: " ")
    for word in words {
        dict[word, default: 0] += 1
    }
    return dict
}
print(wordFrequency("apple banana apple cherry banana apple"))


func wordFreq(_ s: String) -> [(key: String, value: Int)] {
    var dict: [String: Int] = [:]
    let words = s.components(separatedBy: " ").filter { !$0.isEmpty }
    print("WORDS \(words)")
    for word in words {
        dict[word, default: 0] += 1
    }
    let sortedValues = dict.sorted { $0.value < $1.value }
    print(sortedValues)
    return sortedValues
}
print(wordFreq("apple banana apple cherry banana apple"))
