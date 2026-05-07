//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// https://www.hackerrank.com/challenges/append-and-delete/problem?isFullScreen=true
// Some test cases are passing but some not passing

func appendAndDelete(s: String, t: String, k: Int) -> String {
    var count = 0
    for (charS, charT) in zip(s, t) {
        if charS == charT {
            count += 1
        } else {
            break
        }
    }
    let deletes = s.count - count
    let appends = t.count - count
    let total = deletes + appends
    
    guard total == k else {
        return "No"
    }
    return "Yes"
}
    
print(appendAndDelete(s: "abc", t: "def", k: 6))
