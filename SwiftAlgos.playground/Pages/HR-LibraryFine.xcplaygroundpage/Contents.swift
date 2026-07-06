//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/challenges/library-fine/problem?isFullScreen=true

func libraryFine(d1: Int, m1: Int, y1: Int, d2: Int, m2: Int, y2: Int) -> Int {
    // per year late
    if y1 > y2 {
        return 10000 * (y1 - y2)
    // per month late, same year
    } else if y1 == y2 && m1 > m2 {
        return 500 * (m1 - m2)
    // per day late, same month
    } else if y1 == y2 && m1 == m2 && d1 > d2 {
        return 15 * (d1 - d2)
    } else {
        return 0
    }
}
print(libraryFine(d1: 6, m1: 6, y1: 2016, d2: 6, m2: 6, y2: 2015))
