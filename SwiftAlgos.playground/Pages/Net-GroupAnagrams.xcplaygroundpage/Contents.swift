//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//Inout - passing a value by reference

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
print(doubleInPlace(number: &myNum))
print(myNum)

func multiply(number: Int) -> Int {
    number * 2
}

var newNumber = 10
print(multiply(number: newNumber))
print(multiply(number: 10))
print(newNumber)


//https://www.educative.io/courses/decode-the-coding-interview-swift/diy-group-anagrams
func groupAnagrams(strs: Set<String>, groups: inout Set<Set<String>>) {
    var anagram = [[String]]()
    // loop over
    for string1 in strs {
        for string2 in strs {
            // check if the character in the first string is the same as the character in the next string
            if string1.sorted() == string2.sorted() {
                // if it's the same add it to anagram array
                anagram.append([string1])
            }
        }
    }
    print(anagram)
}
var groups = Set<Set<String>>()
groupAnagrams(strs:["word", "sword", "drow", "rowd", "iced", "dice"], groups: &groups)




//Regex
/*
 Regular expressions are a concise way of describing a pattern, which can help you match or extract portions of a string.
 */
let keyAndValue = /(.+?): (.+)/
// simpleDigits is created from a pattern in a string
let simpleDigits = try Regex("[0-9]+")
print(simpleDigits)
// Regex is used to search for a pattern in a string or substring.
let setting = "color: 161 103 230"
if setting.contains(simpleDigits) {
    print("'\(setting)' contains some digits.")
}
// when the match is found the resulting Regex.Match type includes an output property that contains the matched substring along wih any captures:
if let match = setting.firstMatch(of: keyAndValue) {
    print("Key: \(match.1)")
    print("Value: \(match.2)")
}
    
func oneMore(than number: Int) -> Int {
    return number + 1
}

// Defining a new variable
var myNumber = 1
myNumber = oneMore(than: myNumber)
print(myNumber)

