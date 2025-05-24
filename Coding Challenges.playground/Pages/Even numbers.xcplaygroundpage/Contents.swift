//: [Previous](@previous)

// Print out all even numbers that are between 1 to 100

import Foundation

func evenNumber(limit: Int) {
    for i in 0..<limit {
        // modulus operator, remainder
        // if the remainder is 0 print the number
        /*
         When i = 0, 0 % 2 == 0 is true, so it prints 0.
         When i = 1, 1 % 2 == 1 is false, so it does not print anything.
         When i = 2, 2 % 2 == 0 is true, so it prints 2.
         When i = 3, 3 % 2 == 1 is false, so it does not print anything.
         When i = 4, 4 % 2 == 0 is true, so it prints 4.
         */
        if i % 2 == 0 {
            print(i)
        }
    }
}
print(evenNumber(limit: 50))



for radians in stride(from: 0.0, to: .pi * 2, by: .pi / 2) {
    let degrees = Int(radians * 180 / .pi)
    print("Degrees: \(degrees), radians: \(radians)")
}
