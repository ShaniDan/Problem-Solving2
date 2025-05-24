//: [Previous](@previous)

import Foundation

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    
    // sort the array
    var sorted = nums.sorted() {$0 > $1}
    print(sorted)
    // return the value at the answer index
    return sorted[k - 1]
}
print(findKthLargest([3,2,1,5,6,4], 2))


/*
 Write a function to find the longest common prefix string amongst an array of strings.
 If there is no common prefix, return an empty string "".
 
 Input: strs = ["flower","flow","flight"]
 Output: "fl"
 */

func longestCommonPrefix(_ input: [String]) -> [String] {
    var result = ""
    var result2 = [String]()
    
    // outer loop
    for char1 in input {
        if char1.prefix(0) == char1.prefix(1) {
            result2.append(char1)
        }
    }
    return result2
}
print(longestCommonPrefix(["flower","flow","flight"]))

let one = "office"
let another = "office"

func characterCounts(_ s: String) -> [Character: Int] {
    return s.reduce(into: [:], { $0[$1, default: 0] += 1 })
}

print(characterCounts("flower"))

extension String {
    func haveSameCharecterSet(_ str : String) -> Bool {
            return self.sorted() == str.sorted()
    }
}

var str1 = "ABCD"
var str2 = "CDBA"
print(str1.haveSameCharecterSet(str2));

//true

func longestCommonPrefix2(_ strings: [String]) -> String {
  .init(
    strings.reduce(.init(strings.randomElement()!)) { commonString, string in
        print("Common String: \(commonString), \(string)")
      var iterator = string.makeIterator()
      return commonString.prefix { $0 == iterator.next() }
    }
  )
}
print(longestCommonPrefix2(["flower","flow","flight"]))
