//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// TODO: 
// https://www.hackerrank.com/challenges/bon-appetit/problem?isFullScreen=true

func bonAppetit(bill: [Int], k: Int, b: Int) -> Void {
    var mutBill = bill
    var newBill = [Int]()
    for num in mutBill.indices {
        if mutBill[num] == mutBill[k] {
            mutBill.remove(at: num)
            print(num)
            newBill = mutBill
        }
    }
    let sum = newBill.reduce(0, +)
    if newBill.reduce(0, +) % 2 == 0  {
       print("Bon Appetit")
    } else {
        print(b)
    }
    
    
}
print(bonAppetit(bill: [3, 10, 2, 9], k: 1, b: 12))
