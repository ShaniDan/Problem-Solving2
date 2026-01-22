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


// struct value type, values are copied
struct Animal {
    var name: String
    var type: String
}

var firstAnimal = Animal(name: "Lion", type: "Carnivore")
print(firstAnimal)
var secondAnimal = firstAnimal
secondAnimal.name = "Tiger"
//value is changed
print(secondAnimal)
//value is not changed
print(firstAnimal)

//class is a reference type and the values are referenced (changed)
class Animal2 {
    var name2: String
    var type2: String
    
    init(name2: String, type2: String) {
        self.name2 = name2
        self.type2 = type2
    }
}

extension Animal2: CustomStringConvertible {
    var description: String {
        "Name: \(name2), \(type2)"
    }
}

var firstAnimal2 = Animal2(name2: "Jiraffe", type2: "Herbivore")
print(firstAnimal2)
var secondAnimal2 = firstAnimal2
secondAnimal2.name2 = "rabbit"
// value is changed
print(secondAnimal2)
// value is changed beause it's a class
print(firstAnimal2)
