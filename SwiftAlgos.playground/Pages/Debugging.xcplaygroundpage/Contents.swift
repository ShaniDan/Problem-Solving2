//: [Previous](@previous)

import Foundation
import SwiftUI

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Interview follow-up:
     •    What is the error?
     •    How would you prevent this in production code?
 */

let numbers = [1, 2, 3]
// this will prevent the code from crashing
if numbers.count > 2 {
    print(numbers[2])
} else {
    print("Index out of range")
}

/*
 Why does this function not compile?
 Interview follow-up:
     •    How many ways can you fix this?
     •    Which is safest?
 */

func greet(name: String?) -> String {
    // force unwrapping - not the best way
    // give the property a default - return "Hello \(name ?? "")"
    // remove the optional
    return "Hello \(name ?? "")"
}

/*
 Question 3 (Medium): Why does this always print 0?
 Interview follow-up:
     •    Is this a logic bug or syntax bug?
     •    How would you test it?
 */

func countEven(_ numbers: [Int]) -> Int {
    var count = 0
    for number in numbers {
        //
        if number % 2 == 1 {
            count += 1
        }
    }
    return count
}

print(countEven([2, 4, 6, 8]))

/*
 Why is this not updating the UI?
 Interview follow-up:
     •    Why won’t SwiftUI update?
     •    What protocol is missing?

 */
class CounterViewModel: ObservableObject {
    @Published var count = 0
}

let vm = CounterViewModel()
vm.count = 1
