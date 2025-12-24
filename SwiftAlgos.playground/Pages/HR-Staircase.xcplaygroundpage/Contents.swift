//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Staircase detail

 This is a staircase of size : n = 4

    #
   ##
  ###
 ####
 Its base and height are both equal to . It is drawn using # symbols and spaces. The last line is not preceded by any spaces.

 Write a program that prints a staircase of size .
 */

func staircase(n: Int) -> Void {
    // Write your code here
//    if 0 < n {
        for num in 1...n {
            print(String(repeating: " ", count: n-num)
                  + String(repeating: "#", count: num))
        }
//    }
}
staircase(n: 4)
