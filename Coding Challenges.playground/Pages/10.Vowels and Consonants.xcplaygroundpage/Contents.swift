//: [Previous](@previous)
/*
 Given a string in English, return a tuple containing the number of vowels and consonants.
 Tip: Vowels are the letters, A, E, I, O, and U; consonants are the letters B, C, D, F, G, H, J, K,
 L, M, N, P, Q, R, S, T, V, W, X, Y, Z.
 Sample input and output
 • The input “Swift Coding Challenges” should return 6 vowels and 15 consonants.
 • The input “Mississippi” should return 4 vowels and 7 consonants.
 Hints
 Hint #1: Just because a letter is not a vowel, it doesn’t mean it’s a consonant – think
 punctuation, for example.
 Hint #2: You’ll need to differentiate carefully between the String and Character types.
 Hint #3: You could use CharacterSet here, but is it really needed?
 Hint #4: Your return type should be (vowels: Int, consonants: Int).
 Hint #5: Watch out for uppercase and lowercase letters – an “A” is a vowel regardless of its case.
 */

import Foundation

func solution10a(input: String) -> (vowels: Int, consonants: Int) {
    // declare vowel and consonant variables
    var vowels = Set("aeiouAEIOU")
//    var consonants = "B, C, D, F, G, H, J, K, L, M, N, P, Q, R, S, T, V, W, X, Y, Z"
    var vowelCount = 0
    var consonantCount = 0
    
    // loop over the input1 and input2
    for char in input {
        //get the count of the vowels and consonants in the input1 and input2
        if vowels.contains(char) {
             vowelCount += 1
        } else if char.isLetter {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

print(solution10a(input: "Swift Coding Challenges"))

func challenge10b(input: String) -> (vowels: Int, consonants: Int) {
    
    let vowels = "aeiou"
    let consonants = "bcdfghjklmnpqrstvwxyz"
    var vowelCount = 0
    var consonantCount = 0
    for letter in input.lowercased() {
        let stringLetter = String(letter)
        if vowels.contains(stringLetter) {
            vowelCount += 1
        } else if consonants.contains(stringLetter) {
            consonantCount += 1
        }
    }
    return (vowelCount, consonantCount)
}

print(challenge10b(input: "Mississippi”"))
