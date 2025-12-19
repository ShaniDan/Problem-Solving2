//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 Given a square matrix, calculate the absolute difference between the sums of its diagonals.

 For example, the square matrix  is shown below:

 1 2 3
 4 5 6
 9 8 9
 The left-to-right diagonal = .
 The right-to-left diagonal = .
 Their absolute difference is .

 Function description

 Complete the  function with the following parameter:

 : a 2-D array of integers
 Return

 : the absolute difference in sums along the diagonals
 Input Format

 The first line contains a single integer, , the number of rows and columns in the square matrix .
 Each of the next  lines describes a row, , and consists of  space-separated integers .

 Constraints

 Sample Input

 STDIN      Function
 -----      --------
 3           arr[][] sizes n = 3, m = 3
 11 2 4     arr = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
 4 5 6
 10 8 -12
 Sample Output

 15
 Explanation

 The primary diagonal is:

 11
    5
      -12
 Sum across the primary diagonal: .

 The secondary diagonal is:

      4
    5
 10
 Sum across the secondary diagonal:
 Difference:

 Note: |x| is the absolute value of x.
 */


// 2D Arrays, Matrix https://kitemetric.com/blogs/mastering-2d-arrays-matrices-in-swift

var matrix = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]
// Access Elements
print("Element at [1][2] is: \(matrix[0][0])")
// Modify
matrix[0][0] = 9
print("Modified element at [1][2] is: \(matrix[0][0])")
// Iterating through the 2D array
for row in matrix {
    for value in row {
        print(value, terminator: " ")
    }
    // I need to do this line for it to print it as a matrix
    print()
}
// this solution doesn't pass all test cases because the rows are fixed
func diagonalDifference(arr: [[Int]]) -> Int {
    // Write your code here
    var sumPD = 0
    var sumSD = 0
    var result = 0
    sumPD = arr[0][0] + arr[1][1] + arr[2][2]
    sumSD = arr[0][2] + arr[1][1] + arr[2][0]
    result = sumSD - sumPD
    
    return result
}

// Define a 2D array (3x3 matrix)
print(diagonalDifference(arr: [[11, 2, 4], [4, 5, 6], [10, 8, -12]]))

/*
 func diagonalDifference(arr: [[Int]]) -> Int {
     let n = arr.count
     var primary = 0
     var secondary = 0

     for i in 0..<n {
         primary += arr[i][i]
         secondary += arr[i][n - 1 - i]
     }

     return abs(primary - secondary)
 }
 */
