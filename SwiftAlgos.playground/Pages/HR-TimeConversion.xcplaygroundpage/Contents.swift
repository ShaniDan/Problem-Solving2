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
    var inputString = s
    var result = String()
 
        if s.hasSuffix("PM") {
            var separator = s.split(separator: ":")
            if (Int(separator.first!) ?? 0) < 12 {
                var converted = (Int(separator.first!) ?? 0) + 12
                let start = inputString.startIndex
                let end = inputString.index(start, offsetBy: 2)
                let range = start..<end
                inputString.replaceSubrange(range, with: String(converted))
            }
    } else if s.hasSuffix("AM") {
        var separator = s.split(separator: ":")
        if (Int(separator.first!) ?? 0) == 12 {
            var separator = s.split(separator: ":")
            let start = inputString.startIndex
            let end = inputString.index(start, offsetBy: 2)
            let range = start..<end
            inputString.replaceSubrange(range, with: "00")
        }
    }
    result = inputString.replacingOccurrences(of: "PM", with: "")
        .replacingOccurrences(of: "AM", with: "")
    return result
}

//print(timeConversion(s: "12:45:54PM"))
