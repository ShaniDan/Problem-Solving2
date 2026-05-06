//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

//https://www.hackerrank.com/challenges/drawing-book/problem?isFullScreen=true

func pageCount(n: Int, p: Int) -> Int {
    
    let frontPage = p / 2
    let backPage = n / 2 - frontPage
    return min(frontPage, backPage)
}
print(pageCount(n: 37455, p: 29835))
