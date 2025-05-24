//: [Previous](@previous)
/*
 The next year, to speed up the process, Santa creates a robot version of himself, Robo-Santa, to deliver presents with him.
 
 Santa and Robo-Santa start at the same location (delivering two presents to the same starting house), then take turns moving based on instructions from the elf, who is eggnoggedly reading from the same script as the previous year.
 
 This year, how many houses receive at least one present?
 
 For example:
 
 ^v delivers presents to 3 houses, because Santa goes north, and then Robo-Santa goes south.
   Start location 2 presents, North 1 present
  - Santa (0, 0)
  - Robo-Santa (0, 0)
  - Santa goes north (0, 1)
  - Robo-Santa goes south (0, -1)
 [
   (0, 0)
   (0, 1)
   (0, -1)
 ]
 
 ^>v< now delivers presents to 3 houses, and Santa and Robo-Santa end up back where they started.
 
 ^v^v^v^v^v now delivers presents to 11 houses, with Santa going one direction and Robo-Santa going the other.
 */

import Foundation

func readTxt() -> Int {
    
    guard let filePath = Bundle.main.path(forResource: "day3.2015", ofType: "txt")
    else {
        fatalError("File not found")
    }
    
    let input = try!
    String(contentsOfFile: filePath, encoding: .utf8)
    return housesWithAtLeastOnePresent(input)
}

func housesWithAtLeastOnePresent(_ input: String) -> Int {
    
    var visitedHouses: [String: Int] = [:]
    
    // `x` and `y` are named elements of the tuple, explicitly defining the coordinate values.
    
    var santaPoint = (x: 0, y: 0)
    var roboSantaPoint = (x: 0, y: 0)
    
    var isSantasTurn = false
    
    // start location
    
    visitedHouses["\(santaPoint)", default: 0] += 1
    visitedHouses["\(roboSantaPoint)", default: 0] += 1

    // loop over the input
    
    for char in input {
        
        isSantasTurn.toggle()
        
        if isSantasTurn {
            // move the current point based on char (up, down, left, right)
            if char == "^" {
                // move the currentPoint up
                santaPoint = (x: santaPoint.x, y: santaPoint.y + 1)
            } else if char == "v" {
                // move the currentPoint down
                santaPoint = (x: santaPoint.x, y: santaPoint.y - 1)
            } else if char == ">" {
                // move to the right
                santaPoint = (x: santaPoint.x + 1, y: santaPoint.y)
            } else if char == "<" {
                // move to the left
                santaPoint = (x: santaPoint.x - 1, y: santaPoint.y)
            } else {
                continue
            }
            visitedHouses["\(santaPoint)", default: 0] += 1
        } else {
            // robo santa's turn
            // move the current point based on char (up, down, left, right)
            if char == "^" {
                // move the currentPoint up
                roboSantaPoint = (x: roboSantaPoint.x, y: roboSantaPoint.y + 1)
            } else if char == "v" {
                // move the currentPoint down
                roboSantaPoint = (x: roboSantaPoint.x, y: roboSantaPoint.y - 1)
            } else if char == ">" {
                // move to the right
                roboSantaPoint = (x: roboSantaPoint.x + 1, y: roboSantaPoint.y)
            } else if char == "<" {
                // move to the left
                roboSantaPoint = (x: roboSantaPoint.x - 1, y: roboSantaPoint.y)
            } else {
                continue
            }
            visitedHouses["\(roboSantaPoint)", default: 0] += 1
        }
    }
    
    print(visitedHouses)
    
    // return the count of houses with at least one present
    
    return visitedHouses.count
}


//print(readTxt())

print(housesWithAtLeastOnePresent("^v")) // -> output 3 because 2 deliveries 1st stop and 1 delivery second stop
print(housesWithAtLeastOnePresent("^>v<")) // -> 3 couldn't figure out why 3 deliveries
print(housesWithAtLeastOnePresent("^v^v^v^v^v")) // -> 11 - 2 deliveries 1st stop and 1 delivery in all the other atops

