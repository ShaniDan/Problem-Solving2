//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// TODO
func climbingLeaderboard(ranked: [Int], player: [Int]) -> [Int] {
    var result = [Int]()
    // use dictionary
    let keys = stride(from: 10, through: 100, by: 10)
    let values = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1]
    var dict = Dictionary(uniqueKeysWithValues: zip(keys, values))
    print(dict)
    
    return result
}
print(climbingLeaderboard(ranked: [100,90,90,80], player: [70,80,105]))

let s = "1 2 3 4 5 6 7 8 9 10"
var nums = s.split(separator: " ").compactMap { Int($0) }
//print(nums)
var(minimum, maximum) = (nums[0], nums[0])
var freq = [Int: Int]()
for n in nums.reversed() {
    freq[n, default: 0] += 1
    minimum = min(n, minimum); maximum = max(n, maximum)
}
nums.sort()
let doubled = nums.map { $0 * 2 }
let evens = nums.filter { ($0 % 2) == 0}
let sum = nums.reduce(0, +)
let (first, last, count, minVal, maxVal) = (nums.first, nums.last, nums.count, nums.min(), nums.max())

