//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// https://www.hackerrank.com/challenges/append-and-delete/problem?isFullScreen=true

func appendAndDelete(s: String, t: String, k: Int) -> String {
    var result = "Yes"
    var count = 0
    var sMut = s
    for charS in s {
        for charT in t {
            if charS != charT {
                sMut.filter { $0 != charS }
                count += 1
            }
        }
        count += 1
    }
    print(s)
    return result
}
print(appendAndDelete(s: "a,b,c", t: "e,d,f", k: 6))
