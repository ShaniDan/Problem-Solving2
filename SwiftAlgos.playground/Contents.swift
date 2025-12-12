import UIKit
import SwiftUI

var greeting = "Hello, playground"

class Solution {
    
    var lines: [String] = []
    
    func parseTxt() -> [String] {
        
        if let filePath = Bundle.main.path(forResource: "1_2025", ofType: "txt") {
            do {
                let contents = try String(contentsOfFile: filePath, encoding: .utf8)
                lines = contents.components(separatedBy: .newlines)
                // this gets the index of lines
                for line in 0..<lines.count {
                    lines[line] = lines[line].replacingOccurrences(of: "\\", with: "")
                }
                print(lines)
               
            } catch {
                print("Error reading file:", error)
                return []
            }
        }
        return lines
    }
    
    func solution(_ input: [String]) -> Int {
        var result = [Int]()
        var distance = 50
        var countOfZero = 0
        var finalResult = 0
        
        for number in input {
            if number.hasPrefix("L") {
                number.dropFirst()
                if let value = Int(number.dropFirst()) {
                    result.append(-value)
                }
            } else if number.hasPrefix("R") {
                if let value = Int(number.dropFirst()) {
                    result.append(value)
                }
            }
        }
        
        for number in result {
            
            distance += number
        // if I use if it runs only one time and while keeps the loop until it's correct
            while distance < 0 {
                distance += 100
                print("Distance < 0 -> \(distance)")
            }
           while distance > 99 {
                distance -= 100
                print("Distance > 99 -> \(distance)")
            }            
            if distance == 0 {
                countOfZero += 1
            }
            finalResult = countOfZero
        }
        return finalResult
    }
    
//    let inputTest = ["L68", "L30", "R48", "L5", "R60", "L55", "L1", "L99", "R14", "L82"]
    
}

let result = Solution()
let lines = result.parseTxt()
let password = result.solution(lines)
print(password)


// 50 - 68 = -18
// inside the  while distance < 0 because -18 is < 0
// -18 + 100 = 82  - > 82 is not < 0 or > 99
// 82 - 30 = 52 - > 52 is not < 0 or > 99
// 52 + 48 = 100  - > distance > 99 greater than 99, 100 - 100 = 0
// 0 - 5 = -5 -> -5 < 0 less than 0 so
// -5 + 100 = 95
// 95 + 60 = 155 -> 155 > 99 so -100
// 155 - 100 = 55
// 55 - 55 = 0
// 0 - 1 = -1 -> -1 < 0
// -1 + 100 = 99
// 99 - 99 = 0
// 0 + 14 = 14
// 14 - 82 = -68
