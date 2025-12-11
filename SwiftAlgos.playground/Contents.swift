import UIKit

var greeting = "Hello, playground"

func solution(_ input: [String])  {
    var result = [Int]()
    var distance = 50
    var finalResult = 0
    
    for number in input {
        // if column1 == L -> minus number in column2 from 50 or whatever number the dial stopped
        if number.hasPrefix("L") {
            number.dropFirst()
            // casting it to Int
            if let value = Int(number.dropFirst()) {
                result.append(-value)
            }
        } else if number.hasPrefix("R") {
            // if column1 == R -> plus number in column2 from 50 or whatever number the dial stopped
            if let value = Int(number.dropFirst()) {
                result.append(value)
            }
        }
    }
    print(result)
    
    for number in result {
        distance += number
        print(distance)
    }
}

let inputTest = ["L68", "L30", "R48", "L5", "R60", "L55", "L1", "L99", "R14", "L82"]

print(solution(inputTest))
