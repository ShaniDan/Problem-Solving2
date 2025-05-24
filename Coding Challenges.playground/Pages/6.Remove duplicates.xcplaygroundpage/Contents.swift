//: [Previous](@previous)

/*
 Remove duplicate letters from a string
 
 Sample input and output
 • The string “wombat” should print “wombat”.
 • The string “hello” should print “helo”.
 • The string “Mississippi” should print “Misp”.
 */

import Foundation

// func that takes a String parameter named input
func challenge6a(input: String) -> String {
    // declare a result variable and a Set with characters
    var result = ""
    var setCharacters = Set<Character>()
    // loop over input
    for char in input {
        // check if a Set contains contains a character
        if !setCharacters.contains(char) {
            // append to the result
            result.append(char)
            setCharacters.insert(char)
        }
    }
    return result
}
print(challenge6a(input: "hello"))
print("Text")

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

/*
 Given an integer array nums sorted in non-decreasing order, remove the duplicates in-place such that each unique element appears only once. The relative order of the elements should be kept the same. Then return the number of unique elements in nums.

 Consider the number of unique elements of nums to be k, to get accepted, you need to do the following things:

 Change the array nums such that the first k elements of nums contain the unique elements in the order they were present in nums initially. The remaining elements of nums are not important as well as the size of nums.
 Return k.
 */

// MARK: Why this solutions isn't accepted on LeetCode

func removeDuplicates(_ nums: inout [Int]) -> Int {
    // change the array into Set
    // creating a new location in memory, it's not modifying
    var setNumbers = Set(nums)

    var sortedNumbers = setNumbers.sorted()
    
    for i in 0..<sortedNumbers.count {
        //
      nums[i] = sortedNumbers[i]
        print(nums[i])
        print(sortedNumbers[i])
    }
    
//    for (i, num) in setNumbers.sorted().enumerated() {
//      nums[i] = num
//    }
    return setNumbers.count
}
var numbers = [0,0,1,1,1,2,2,3,3,4,9]
removeDuplicates(&numbers)
//print(numbers)

class Solution {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        if nums.isEmpty { return 0 }
        
        var i = 0
        
        for j in 1..<nums.count {
            // two pointers
            if nums[j] != nums[i] {
                i += 1
                print(i)
                //modifying the input array
                nums[i] = nums[j]
            }
        }
        
        return i + 1
    }
}
var number = [0,0,1,1,1,2,2,3,3,4]
print(removeDuplicates(&number))


func longestCommonPrefix(_ strs: [String]) -> [String] {

      var result = [String]()

    for i in 0..<strs.count {
        let stringIndex = strs.index(strs.startIndex, offsetBy: i)
        if stringIndex[0] == stringIndex[1] {
            
        }
      }
    return result
  }
print(longestCommonPrefix(["flower","flow","flight"]))
