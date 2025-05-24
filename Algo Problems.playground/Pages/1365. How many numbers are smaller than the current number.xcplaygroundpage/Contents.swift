//: [Previous](@previous)

/*
 Given the array nums, for each nums[i] find out how many numbers in the array are smaller than it. That is, for each nums[i] you have to count the number of valid j's such that j != i and nums[j] < nums[i].
 
 Return the answer in an array.
 
 
 
 Example 1:
 
 Input: nums = [8,1,2,2,3]
 Output: [4,0,1,1,3]
 Explanation:
 For nums[0]=8 there exist four smaller numbers than it (1, 2, 2 and 3).
 For nums[1]=1 does not exist any smaller number than it.
 For nums[2]=2 there exist one smaller number than it (1).
 For nums[3]=2 there exist one smaller number than it (1).
 For nums[4]=3 there exist three smaller numbers than it (1, 2 and 2).
 
 */

import Foundation


func smallerNumbersThanCurrent(_ nums: [Int]) -> [Int] {
    // empty array to store smaller numbers
    var biggerNumbers = [Int]()
    // loop over nums
        // check if the current number is bigger than the rest of the numbers
    for (index, number) in nums.enumerated() {
        
    }
        // add smaller numbers to an empty array
        if let largest = nums.max() {
            biggerNumbers.append(largest)
    }
    // count the number of the smaller array for each number in a nums
    return biggerNumbers
}
print(smallerNumbersThanCurrent([8,1,2,2,3]))
