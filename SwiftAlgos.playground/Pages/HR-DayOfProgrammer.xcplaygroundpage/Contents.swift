//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// MARK: This didn't pass all the test cases

func dayOfProgrammer(year: Int) -> String {
    var day = 0
    
    if year % 4 == 0 || year % 400 == 0 {
        day = 244
    } else {
        day = 243
    }
    
    let exactDay = 256 - day
       
    var components = DateComponents()
    components.day = exactDay
    components.month = 9
    components.year = year
    
    guard let date = Calendar.current.date(from: components) else {
        return ""
    }
    let formatter = DateFormatter()
    formatter.dateFormat = "dd.MM.yyyy"
    
    return formatter.string(from: date)
}
print(dayOfProgrammer(year: 2700))
