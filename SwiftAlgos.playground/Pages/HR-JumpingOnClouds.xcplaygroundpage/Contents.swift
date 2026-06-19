//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/jumping-on-the-clouds-revisited/problem?isFullScreen=true
// energy level e = 100
// it takes -1 each jump
// if the jump lands on thundercloud which is 1 in an array it loses -2
// make a little visual representation of this with some cloud popping or turning red

func jumpingOnClouds(c: [Int], k: Int) -> Int {
    var startJump = 100
    // need to assign 0 to 1 and 1 to 2
    // k is number of jumps
    for num in stride(from: k, to: c.count, by: k) {
        if c[num] == 0 {
            startJump -= 1
        } else if c[num] == 1 {
            startJump -= 3
        }
    }
return startJump
}
// output = 96

print(jumpingOnClouds(c: [1, 1, 1, 0, 1, 1, 0, 0, 0, 0], k: 3))
