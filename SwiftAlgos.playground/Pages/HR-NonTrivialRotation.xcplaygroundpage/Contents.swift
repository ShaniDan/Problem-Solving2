//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
//https://www.hackerrank.com/contests/software-engineer-prep-kit/challenges/check-non-identical-string-rotation/problem?isFullScreen=true

func isNonTrivialRotation(s1: String, s2: String) -> Bool {
    var result = true
    var immutableS1 = s1
    var tempArray = [String]()
    // loop
    for character in s1 {
        immutableS1.removeFirst()
//        print(immutableS1)
        tempArray.append(immutableS1)
        print(immutableS1)
        
    }
    print(immutableS1)
    return result
}
//print(isNonTrivialRotation(s1: "abcde", s2: "cdeab"))



func rotateSring(originalString: String, numberOfRotations: UInt) -> String {

    if numberOfRotations == 0 {
        return originalString
    }

    return rotateSring(originalString: originalString[originalString.index(after: originalString.startIndex)..<originalString.endIndex] + String(originalString[originalString.startIndex]),
                       numberOfRotations: numberOfRotations - 1)
}

print(rotateSring(originalString: "12345", numberOfRotations: 2))

