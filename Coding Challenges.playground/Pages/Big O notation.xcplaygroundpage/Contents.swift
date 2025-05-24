//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/* Describes the performance of an algorithm as the amount of data increases
 Big O notation describes the upper bound of an algorithm's time pr space complexity as the input size "n" grows
 It tells you how your algorithm will scale, and it helps you compare which algorithms are more efficiet, expecially for large inputs
 The "O" stands for "Oder of" - it's a mathematical for saying:
 "This function grows on the order of this rate"
 So O(n2) means the algorithm's growth is on the order of n2 operations.
 */

/*
 o(1)
 o(n)
 o(log n)
 o(n^2)
 n = amount of data (it's a variable like x)
 */

// MARK: O(1) - Constant Time
// Constant time: doesn't depend on array size
// Is it better to use optional in this code after "Int?"

func getFirstElement(_ array: [Int]) -> Int {
    
    // You can print the numbers out by inputing the index number.
    
    return array[1]
}
print(getFirstElement([2, 5, 6, 7, 8]))

// MARK: O(log n) - Lagarithmic Time

func binarySearch(_ array: [Int], _ target: Int) -> Bool {
    var left = 0
    var right = array.count - 1
//    print(right)
    
    while left <= right {
        let mid = (left + right) / 2
        print(mid)
        if array[mid] == target {
            return true
        } else if array[mid] < target {
            left = mid + 1
        } else {
            right = mid - 1
        }
    }
    return false
}

print(binarySearch([1, 2, 3, 4, 5], 3))

// MARK: O(n) - Linear Time

func linearTime(_ input: String) -> Int {
    var result = [String]()
    for char in input {
        if char == "H" {
            result.append(String(char))
        }
    }
    return result.count
}

print(linearTime("Hello World"))

func sumArray(_ array: [Int]) -> Int {
    var sum = 0
    for num in array {
        sum += num
    }
    return sum
}
print(sumArray([4, 6, 90]))

// MARK: O(n log n) - Linearithmic Time
// higher order functions are O(n log n)

func sortArray(_ array: [Int]) -> Int {
//    return array.sorted()
    // This is printing the number of the assigned value
    return array.filter {$0 == 1}.count
//    var count = [Int]()
//    for num in array {
//        if num == 1 {
//            count.append(num)
//        }
//    }
//    return count
}
print(sortArray([3, 3, 0, 1, 0, 1, 2, 2]))

// MARK: O(n2) - Quadratic Time

func printPairs(_ array: [Int]) {
    for i in 0..<array.count {
        for j in 0..<array.count {
            print("(\(array[i]), \(array[j]))")
        }
    }
}
printPairs( [1, 2, 3, 4])

// MARK: O(2n) - Exponential Time
// Recursive Fibonacci with no memoization = brutal for large n

func fibonacci(_ n: Int) -> Int {
    if n <= 1 {
        return n
    }
    return fibonacci(n - 1) + fibonacci(n - 2)
}

print(fibonacci(4))

// MARK: O(n!) – Factorial Time

func permutations(_ nums: [Int]) -> [[Int]] {
    var result: [[Int]] = []
    
    func backtrack(_ current: [Int], _ remaining: [Int]) {
        if remaining.isEmpty {
            result.append(current)
            return
        }
        for i in 0..<remaining.count {
            var newCurrent = current
            newCurrent.append(remaining[i])
            var newRemaining = remaining
            newRemaining.remove(at: i)
            backtrack(newCurrent, newRemaining)
        }
    }

    backtrack([], nums)
    return result
}

print(permutations([5]))



