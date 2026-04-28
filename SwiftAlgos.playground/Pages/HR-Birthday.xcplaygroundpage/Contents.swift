//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/the-birthday-bar/problem?isFullScreen=true

func birthday(s: [Int], d: Int, m: Int) -> Int {
   var result = 0
    var sum = 0
    var sums = [Int]()
    // loop over the s
    for num in 0..<m {
        // add m number of elements
       sum += s[num]
        // sum needs to be d
        print(sum)
        // result is number of sums equal to d
    }
    sums.append(sum)
    for num in sums {
        if num == d {
            print(sums.count)
        }
    }
    print(sums)
    return result
}

print(birthday(s: [1,2,1,3,2], d: 3, m: 2))
