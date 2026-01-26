//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func beautifulDays(i: Int, j: Int, k: Int) -> Int {
    var result = 0
    var days = [Int]()
   
    days.append(i)
    days.append(j)
    days.append(k)
    print(days)
    for number in days {
        var stringNumber = String(number)
        var reversed = String(stringNumber.reversed())
        var difference = number - Int(reversed)!
        print(difference)
        if difference % 2 == 0 {
            result += 1
        }
    }
    return result
}
print(beautifulDays(i: 20, j: 23, k: 6))
