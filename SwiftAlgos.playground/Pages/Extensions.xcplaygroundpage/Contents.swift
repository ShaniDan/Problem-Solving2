//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Create an extension on Int that adds a method `isMultiple(of:)` which returns true if the number is a multiple of the given value. Test it: print whether 15 is a multiple of 3 and whether 15 is a multiple of 4.
 */
extension Int {
    public func isMultiple(of other: Int) -> Bool {
        return self % other == 0
    }
}
print(15.isMultiple(of: 3))
