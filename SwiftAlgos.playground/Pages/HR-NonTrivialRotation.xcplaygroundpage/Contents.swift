//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/check-non-identical-string-rotation/problem?isFullScreen=true

func isNonTrivialRotation(s1: String, numberOfRotations: Int) -> String {
    var result = true
    var immutableS1 = s1
    var tempArray = [String]()
//    let test1 = s1[s1.index(after: s1.startIndex)...s1.endIndex]
    let test = s1[s1.index(after: s1.startIndex)..<s1.endIndex]
//    let rotated = isNonTrivialRotation(s1: s1[s1.index(after: s1.startIndex)..<s1.endIndex] + String(s1[s1.startIndex]), numberOfRotations: numberOfRotations - 1)

    print(test)
    return isNonTrivialRotation(s1: s1[s1.index(after: s1.startIndex)..<s1.endIndex] + String(s1[s1.startIndex]), numberOfRotations: numberOfRotations - 1)
}
print(isNonTrivialRotation(s1: "abcde", numberOfRotations: 2))



func rotateString(originalString: String, numberOfRotations: UInt) -> String {

    if numberOfRotations == 0 {
        return originalString
    }
// recursive
    return rotateString(originalString: originalString[originalString.index(after: originalString.startIndex)..<originalString.endIndex] + String(originalString[originalString.startIndex]),
                       numberOfRotations: numberOfRotations - 1)
}

print(rotateString(originalString: "12345", numberOfRotations: 2))


// While Loop

// Find the factor [800, 75, 750, 400]
// factors [5, 25]

func findFactor(nums: [Int]) -> [Int] {
    var result = [Int]()
    // Loop through each number and get all factors
    var factors: [[Int]] = []
    for num in nums {
        factors.append(findFactors(num: num))
    }
//    print(factors)
    
    // Go through each of those arrays and find any numbers that are in all of them
    if let shortest = factors.min(by: { $0.count < $1.count }) {
        for factor in shortest {
//            print("Checking for", factor)
            result.append(factor)
            // [3, 5, 15, 25]
            for value in factors {
//                print(value)
                if !value.contains(factor) {
                    result.removeLast()
                    break
                }
            }
//            print("Current result", result)
        }
//        print(shortest)
    }
    return result
}

func findFactors(num: Int) -> [Int] {
    var result = [Int]()
    guard num > 1 else { return result }
    for factor in 2..<(num-1) {
        if num % factor == 0 {
            result.append(factor)
        }
    }
    return result
}

//print(findFactors(num: 75))
print(findFactor(nums: [800, 75, 750, 400]))
