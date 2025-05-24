//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

let actor = "Jane"
let  quote = ""

let movie = """
"""
print(actor.count)

let score = 10
let higherScore = score + 10
let halvedScore = score / 2

var counter = 10
counter += 5

let number = 120
print(number.isMultiple(of: 3))

let id = Int.random(in: 1...1000)


func firstUniqueChar(_ s: String) -> Int {
    
    // variable that holds the non repeating character
    // var result = 0
    // loop over the s
    // MARK: Time complexity of this algo is O(n^2) Quadratic Time
    
    var previousLetters = [String]()
    
    for index in 0..<s.count {
        
        // MARK: this is how we get the index of a STRING
        let findIndex = s.index(s.startIndex, offsetBy: index)
        let findIndex1 = s.index(s.startIndex, offsetBy: index)
        let index1 = s.index(s.startIndex, offsetBy: index)
        let index2 = s.index(s.startIndex, offsetBy: index)
        let index3 = s.index(s.startIndex, offsetBy: index)
        let index4 = s.index(s.startIndex, offsetBy: index)
        let index5 = s.index(s.startIndex, offsetBy: index)
        let index6 = s.index(s.startIndex, offsetBy: index)
        // MARK: But for integer we get the index like this
        // let sum = arr[index1] + arr[index2]
        // let sum = arr[index1] + arr[index2]
        // let sum = arr[index1] + arr[index2]
        // let integer = [1, 2, 3, 4, 5, 6, 7, 8 ,9]
        // let indexInteger = integer[0] + integer[1]
        
       // value at an index of the outer loop
       let currentLetter = s[findIndex]
        
        if previousLetters.contains(String(currentLetter)) {
            continue
        }
        
        // add to previousLetters
        previousLetters.append(String(currentLetter))
        
        var isUnique = true
        
        for index2 in (index + 1)..<s.count {
            let findIndex2 = s.index(s.startIndex, offsetBy: index2)
            
            // value at an index of the inner loop
            
            let nextLetter = s[findIndex2]
            
            if currentLetter == nextLetter {
                isUnique = false
                break
            }
        }
        if isUnique {
            return index
        }
    }
    return -1
}
//firstUniqueChar("leetcode")
print(firstUniqueChar("aabb") == -1)
