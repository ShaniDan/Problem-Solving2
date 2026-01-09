//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 There is a strange counter. At the first second, it displays the number 3. Each second, the number displayed by decrements by 1 until it reaches 1. In next second, the timer resets to 2 x the initial number for the prior cycle and continues counting down. The diagram below shows the counter values for each time t in the first three cycles:
 Find and print the value displayed by the counter at time t.
 */
func strangeCounter(t: Int) -> Int {
    var result = 0
    var value = 3
    var newValue = 3
    
    for index in 1..<t {
        value -= 1
        if value == 0 {
            value = newValue * 2
            newValue = value
        }
    }
    return value
}

func strangeCounter2(t: Int) -> Int {
    var initialValue = 3
    var highest = initialValue
    while t > highest {
        initialValue *= 2
        highest += initialValue
    }
    let start = initialValue - 2
    let offset = t - start
    let result = initialValue - offset
    return result
}

//print(strangeCounter(t: 99999997668))
//print(strangeCounter2(t: 1))
//print(strangeCounter2(t: 2))
//print(strangeCounter2(t: 3))
//print(strangeCounter2(t: 4))
//print(strangeCounter2(t: 9))
strangeCounter2(t: 15)
//print(strangeCounter2(t: 99999997668))
