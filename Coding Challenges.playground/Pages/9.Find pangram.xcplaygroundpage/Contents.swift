//: [Previous](@previous)

import Foundation

/*
 Write a function that returns true if it is given a string that is an English pangram, ignoring letter case.
 Tip: A pangram is a string that contains every letter of the alphabet at least once.
 Sample input and output
 • The string “The quick brown fox jumps over the lazy dog” should return true.
 • The string “The quick brown fox jumped over the lazy dog” should return false, because it’s missing the S.
 */

func challenge9a(pangram: String) -> Bool {
    var alphabet = ["A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"]
    
        let upperCased = pangram.uppercased()
        // check if characters in pangram matches the alpahabet letters in alphabet array
       return   alphabet.allSatisfy {
             upperCased.contains($0)
        }
}
print(challenge9a(pangram: "The quick brown fox jumps over the lazy dog"))

func challenge9b(input: String) -> Bool {
let set = Set(input.lowercased())
    
let letters = set.filter { $0 >= "a" && $0 <= "z" }
return letters.count == 26
}

print(challenge9b(input: "The quick brown fox jumps over the lazy dog"))
