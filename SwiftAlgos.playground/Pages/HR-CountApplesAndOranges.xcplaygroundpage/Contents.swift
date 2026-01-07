//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=true
 */

// MARK: This isn't passing big number cases

// This is memory heavy because I'm storing the results in new arrays
//O(n) - Linear time - good for small inputs

func countApplesAndOranges(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var sumApples = [Int]()
    var sumOranges = [Int]()
    var range = [Int]()
    var appleCount = 0
    var orangeCount = 0
    
    for num in apples {
        let sum = a + num
        sumApples.append(sum)
    }
    print(sumApples)
    for num in oranges {
        let sum = b + num
        sumOranges.append(sum)
    }
    print(sumOranges)
    for num in s...t {
        range.append(num)
    }
    print(range)
    for numbers in sumApples {
        if range.contains(numbers) {
            appleCount += 1
        }
    }
    print(appleCount)
    for numbers in sumOranges {
        if range.contains(numbers) {
            orangeCount += 1
        }
    }
    print(orangeCount)
}
countApplesAndOranges(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])

//O(1) - Constant time is faster and more scalable than O(n) - good for large inputs
func countApplesAndOranges2(s: Int, t: Int, a: Int, b: Int, apples: [Int], oranges: [Int]) -> Void {
    var appleCount2 = 0
    var orangeCount2 = 0
    
    for number in apples {
        let landingPosition = a + number
        if landingPosition >= s && landingPosition <= t {
            appleCount2 += 1
        }
    }
    
    for number in oranges {
        let landingPosition = b + number
        
        if landingPosition >= s && landingPosition <= t {
            orangeCount2 += 1
        }
    }
    print(appleCount2)
    print(orangeCount2)
}

countApplesAndOranges2(s: 7, t: 10, a: 4, b: 12, apples: [2,3,-4], oranges: [3,-2,-4])
