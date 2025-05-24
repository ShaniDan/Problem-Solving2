//: [Previous](@previous)

/*
 Write a function that accepts two strings, and returns true if they are identical in length but
 have no more than three different letters, taking case and string order into account.
 Sample input and output
 • The strings “Clamp” and “Cramp” would return true, because there is one letter
 difference.
 • The strings “Clamp” and “Crams” would return true, because there are two letter
 differences.
 • The strings “Clamp” and “Grams” would return true, because there are three letter
 differences.
 • The strings “Clamp” and “Grans” would return false, because there are four letter
 differences.
 • The strings “Clamp” and “Clam” would return false, because they are different lengths.
 • The strings “clamp” and “maple” should return false. Although they differ by only one
 letter, the letters that match are in different positions.
 Hints
 Hint #1: If you value your sanity, get both strings into arrays as quickly as possible.
 Hint #2: You probably want to use the enumerated() method on one array, to get the
 index and character at the same time.
 Hint #3: Your function should return false as soon as it reaches four differences; there’s no
 point continuing to check characters.
 Hint #4: Make sure you check the strings are the same size first, preferably using guard
 */

import Foundation

func challenge11a(input1: String, input2: String) -> Bool {
    var sameCharCount = 0
    // check if the 2 strings are the same count
    if input1.count != input2.count {
        return false
    }
    // loop over input1 and input2
    for (char1, char2) in zip(input1, input2) {
        // campare characters inside the two strings and if they are the same continue if not break
        if char1 == char2 {
            continue
        } else {
            sameCharCount += 1
            if sameCharCount > 3 {
                return false
            }
        }
    }
    return true
}
print(challenge11a(input1: "Clamp", input2: "Grams"))
