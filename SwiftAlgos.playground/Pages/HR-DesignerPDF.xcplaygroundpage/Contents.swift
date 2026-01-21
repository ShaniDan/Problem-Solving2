//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

func designerPdfViewer(h: [Int], word: String) -> Int {
    var result = 0
    let alphabet = ["a","b","c","d","e","f","g","h","i","j","k","l","m","n","o","p","q","r","s","t","u","v","w","x","y","z"]
    var height = [Int]()
    var dict = Dictionary(uniqueKeysWithValues: zip(alphabet, h))

    for letter in dict.keys {
        var stringChar = Character(letter)
        for char in word {
            if stringChar == char {
                height.append(dict[letter]!)
            }
        }
    }
    result = word.count * height.max()!
       return result
}

print(designerPdfViewer(h: [1, 3, 1, 3, 1, 4, 1, 3, 2, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 7
], word: "zaba"))
