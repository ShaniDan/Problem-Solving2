//: [Previous](@previous)

/*
 --- Day 3: Perfectly Spherical Houses in a Vacuum ---
 Santa is delivering presents to an infinite two-dimensional grid of houses.

 He begins by delivering a present to the house at his starting location, and then an elf at the North Pole calls him via radio and tells him where to move next. Moves are always exactly one house to the north (^), south (v), east (>), or west (<). After each move, he delivers another present to the house at his new location.

 However, the elf back at the north pole has had a little too much eggnog, and so his directions are a little off, and Santa ends up visiting some houses more than once. How many houses receive at least one present?

 For example:

 > delivers presents to 2 houses: one at the starting location, and one to the east.
 ^>v< delivers presents to 4 houses in a square, including twice to the house at his starting/ending location.
 ^v^v^v^v^v delivers a bunch of presents to some very lucky children at only 2 houses.
 
 */

import Foundation

func readTxt() -> Int {
    
    guard let filePath = Bundle.main.path(forResource: "day3.2015", ofType: "txt") else {
        fatalError("File not found")
    }
    
    let input = try! String(contentsOfFile: filePath, encoding: .utf8)
    return housesWithMoreThanOneDelivery(input)
}

func housesWithMoreThanOneDelivery(_ input: String) -> Int {
    
    var visitedHouses: [String: Int] = [:]
    
    // x represents horizontal movement (left/right)
    // y represents vertical movemonet (up/down)
    
    var currentPoint = (x: 0, y: 0)
    
    // start location
    visitedHouses["\(currentPoint)", default: 0] += 1

    // loop over the input
    
    for char in input {
        
        // move the current point based on char (up, down, left, right)
        
        if char == "^" {
            // move the currentPoint up
            currentPoint = (x: currentPoint.x, y: currentPoint.y + 1)
        } else if char == "v" {
            // move the currentPoint down
            currentPoint = (x: currentPoint.x, y: currentPoint.y - 1)
        } else if char == ">" {
            // move to the right
            currentPoint = (x: currentPoint.x + 1, y: currentPoint.y)
        } else if char == "<" {
            // move to the left
            currentPoint = (x: currentPoint.x - 1, y: currentPoint.y)
        } else {
            continue
        }
        
        // add one delivery to house at this point
        
        visitedHouses["\(currentPoint)", default: 0] += 1
        
    }
    
    print(visitedHouses)
    
    // return the count of houses with more than 1 delivery
    return visitedHouses.count
}
print(readTxt())

//print(housesWithMoreThanOneDelivery(">")) // should be 0
//print(housesWithMoreThanOneDelivery("^>v<")) // should 1
//print(housesWithMoreThanOneDelivery("^v^v^v^v^v")) // should 2

let testInput = """

 >
 ^>v<
 ^v^v^v^v^v

"""

//: [Next](@next)
