//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Given five positive integers, find the minimum and maximum values that can be calculated by summing exactly four of the five integers. Then print the respective minimum and maximum values as a single line of two space-separated long integers.

 Example
 Sample Input

 1 2 3 4 5
 Sample Output

 10 14
 */

func miniMaxSum(arr: [Int]) -> Void {
    var result = [Int]()
   
    // loop over arr
    for num in arr {
        let sum = arr.reduce(0, +) - num
        result.append(sum)
    }
    print((result.min()!), (result.max()!))
}

miniMaxSum(arr: [1,2,3,4,5])
