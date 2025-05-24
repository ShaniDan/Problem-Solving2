//: [Previous](@previous)

import Foundation

func numberOfWays(arr: [Int], k: Int) -> Int {
  // Write your code here
  var result = 0
  // here in the 0 index
  for index1 in 0..<arr.count {
      
    // 1st iteration it starts not from 0 but from 1 because of index1 + 1  and 2nd iteration it goes to 2nd and so on.
    
    for index2 in(index1 + 1)..<arr.count {
      // here we checking if the value at given indexes equal to k
      let sum = arr[index1] + arr[index2]
        print(sum)
      if sum == k {
        result += 1
      }
    }
  }
  return result
}
print(numberOfWays(arr: [1, 2, 3, 4, 3], k: 6))
