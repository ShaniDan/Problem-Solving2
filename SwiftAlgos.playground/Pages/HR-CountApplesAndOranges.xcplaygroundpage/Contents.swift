//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 https://www.hackerrank.com/challenges/apple-and-orange/problem?isFullScreen=true
 */

// MARK: This isn't passing big number cases

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
