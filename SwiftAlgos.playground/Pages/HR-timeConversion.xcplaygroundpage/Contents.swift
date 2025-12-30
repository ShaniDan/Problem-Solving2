//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Given a time in -hour AM/PM format, convert it to military (24-hour) time.

 Note: - 12:00:00AM on a 12-hour clock is 00:00:00 on a 24-hour clock.
 - 12:00:00PM on a 12-hour clock is 12:00:00 on a 24-hour clock.
 A single string  that represents a time in -hour clock format (i.e.:  or ).
 Constraints
 All input times are valid
 Sample Input 0
 07:05:45PM
 Sample Output 0
 19:05:45
 */

func timeConversion(s: String) -> String {
    var result = String()
 
        if s.hasSuffix("PM") {
            let numberHour = Int(s)
            print(numberHour!)
            let convertedHour = numberHour! + 12
    }
    return result
}

print(timeConversion(s: "07:05:45PM"))
