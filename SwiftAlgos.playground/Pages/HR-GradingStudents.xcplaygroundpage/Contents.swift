//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 HackerLand University has the following grading policy:
 Every student receives a  in the inclusive range from 0 to 100.
 Any grade less than  is a failing grade.
 Sam is a professor at the university and likes to round each student's  grade according to these rules:
 If the difference between the grade and the next multiple of 5 is less than 3, round grade up to the next multiple of 5 .
 If the value of grade is less than 38, no rounding occurs as the result will still be a failing grade.
 
 Sample Input 0
 4
 73
 67
 38
 33
 Sample Output 0
 75
 67
 40
 33
 */

// MARK: This didn't pass all the test cases

func gradingStudents(_ grades: [Int]) -> [Int] {
    var result = [Int]()
    var gradesVar = grades
    gradesVar.removeFirst()
    
    for num in gradesVar {
        let number = num % 5
        let fiveSum = num - number
        let addFive = fiveSum + 5
        let minusSum = addFive - num
        if num < 38 {
            result.append(num)
        }
        else if minusSum < 3 {
            result.append(addFive)
        } else if minusSum == 3 {
            result.append(num)
        }
    }
    return result
}
print(gradingStudents([4, 73, 67, 38, 33]))
