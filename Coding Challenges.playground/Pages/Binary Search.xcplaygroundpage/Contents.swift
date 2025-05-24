//: [Previous](@previous)

import Foundation


var greeting = "Hello, playground"

//: [Next](@next)
// MARK: Trying to find number 2 by cutting the array into two
// Need to find if 2 exists in the array

let numbers = [1, 2, 3, 4, 5, 7, 8, 12, 23, 35, 56]

// let numbers = [1, 2, 3, 4, 5]
// let numbers = [1, 2]
// let numbers = [2]

func performBinary(array: [Int], searchValue: Int) -> Bool {
    let sorted = numbers.sorted()
    print(sorted)
    let minIndex = 0
    let maxIndex = array.count - 1
    
    // if it's possible for the number to exist
    
    if searchValue < array[minIndex] || searchValue > array[maxIndex] {
        print("\(searchValue) is not in the array")
        return false
    }

    return binarySearch(array: sorted, searchValue: searchValue)
}

func binarySearch(array: [Int], searchValue: Int) -> Bool {
    if array.count == 0 { return false }
    
    let minIndex = 0
    let maxIndex = array.count - 1
    print(maxIndex)
    // finding the middle point
    
    let midIndex = maxIndex/2
    print(midIndex)
    // middle number is 12
    let midValue = array[midIndex]
    print(midValue)
    
    // this checks if we the value
    
    if searchValue == midValue {
        print("\(searchValue) found in the array")
        return true
    }
    
    // checks if the value we found if too small
    
    if searchValue > midValue {
        let slice = Array(array[midIndex + 1...maxIndex])
        return binarySearch(array: slice, searchValue: searchValue)
    }
    
    //check if the value we found is too big
    
    if searchValue < midValue {
        // from 0 to 5 middle point
        let slice = Array(array[minIndex...midIndex - 1])
        return binarySearch(array: slice, searchValue: searchValue)
    }
    
    // if we run out of elements to check, if the number we are looking for doesn't exist it returns false
    
    return false
}
print(binarySearch(array: numbers, searchValue: 23))
