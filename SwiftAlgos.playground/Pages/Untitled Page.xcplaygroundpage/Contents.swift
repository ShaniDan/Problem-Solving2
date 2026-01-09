//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// creating an object (creating a struct Music object)
struct Music {
    var artist: String
    var title: String
}
// defining a variable with an instance of firstMusicObject
var firstMusic = Music(artist: "CloZee", title: "Ankaa")
print(firstMusic)
// defining a new variable and assigning firstMusic to it
var secondMusic = firstMusic
// changing the value of the property title in the Music object(struct)
secondMusic.title = "ALTR"
// this one is unchanged, because it's copied


class Diet {
    var name: String
    var frequency: String
    
    init(name: String, frequency: String) {
        self.name = name
        self.frequency = frequency
    }
}

extension Diet: CustomStringConvertible {
    var description: String {
        "Name: \(name), Frequency: \(frequency)"
    }
}
var firstDiet = Diet(name: "Keto", frequency: "Every Day")
print(firstDiet)
var secondDiet = firstDiet
secondDiet.frequency = "Every week"
print(secondDiet)
// this one is changed, it's referenced
print(firstDiet)




