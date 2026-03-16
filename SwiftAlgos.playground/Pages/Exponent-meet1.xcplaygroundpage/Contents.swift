//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
func reverseWords(arr: [Character]) -> [Character] {
    var parts = arr.split(separator: " ")
    var reversed = parts.reversed()
    let joined = reversed.map { String($0) }.joined(separator: " ")
    return Array(joined)
}

print(reverseWords(arr: ["p","e","r","f","e","c","t"," ","m","a","k","e","s"," ","p","r","a","c","t","i","c","e"]))


/* Array Index & Element Equality
 Given a sorted array arr of distinct integers, write a function indexEqualsValueSearch that returns the lowest index i for which arr[i] == i. Return -1 if there is no such index. Analyze the time and space complexities of your solution and explain its correctness.
 
 Examples:
 
 input: arr = [-8,0,2,5]
 output: 2 # since arr[2] == 2
 
 input: arr = [-1,0,3,6]
 output: -1 # since no index in arr satisfies arr[i] == i.
 Constraints:
 
 [time limit] 5000ms
 
 [input] array.integer arr
 
 1 ≤ arr.length ≤ 100
 [output] integer
 */

func indexEqualsValueSearch(arr: [Int]) -> Int {
  var result = Int()
    for index in arr.indices {
        if arr[index] == index {
            return index
        }
    }
  return -1
}
print(indexEqualsValueSearch(arr: [-8,0,2,5]))
print(indexEqualsValueSearch(arr: [-10,0,3,6]))
