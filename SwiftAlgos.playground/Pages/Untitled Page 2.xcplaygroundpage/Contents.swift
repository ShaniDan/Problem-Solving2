//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func equalizeArray(arr: [String]) -> Int {
    var seen = [String]()
    var duplicates = [String]()
    var result = arr.count
    for element in arr {
        if seen.contains(element) {
            // element is a duplicate of one we've already seen
            if duplicates.contains(element) {
                // repeated duplicate
                result -= 1
            } else {
                // new duplicate
                duplicates.append(element)
                result -= 2
            }
        } else {
            // we've not seen element before
            seen.append(element)
        }
    }
    // at this point seen contains the elements that are unique
    // at this point duplicates contains unique elements that have duplicates
    print(duplicates)
    return result
}
print(equalizeArray(arr: ["a","b","c","c","d","b","c","e","b"]), "expect 3")
print(equalizeArray(arr: []), "expect 0")
print(equalizeArray(arr: ["anything"]), "expect 1")



//    var result = [Int]()
//    var arraySorted = arr.sorted()
//
//    for index in arraySorted.indices {
//        if index < (arraySorted.endIndex - 1) {
//            if arraySorted[index] == arraySorted[index + 1] {
//                //element at that index
//                result.append(arraySorted[index])
//            }
//        }
//    }
//    return result.count

