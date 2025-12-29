//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 You are in charge of the cake for a child's birthday. It will have one candle for each year of their total age. They will only be able to blow out the tallest of the candles. Your task is to count how many candles are the tallest.
 Sample Input 0
 4
 3 2 1 3
 Sample Output 0
 2
 */

func birthdayCakeCandles(candles: [Int]) -> Int {
    var result = 0
    var max = candles.max()
    for candle in candles {
        if candle == max {
            result += 1
        }
    }
    print(max!)
    return result
}

print(birthdayCakeCandles(candles: [3,2,1,3]))
