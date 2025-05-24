//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// MARK: String index
func stringIndex(input: String) {
    
    for index in 0..<input.count {
        let getIndex = input.index(input.startIndex, offsetBy: index)
        let currentIndex = input[getIndex]
//        print(currentIndex[0])
    }
}
stringIndex(input: "One")

func stringIndex2(input: String) {
    
    for index in 0..<input.count {
        let getIndex = input.index(input.startIndex, offsetBy: index)
        let currentIndex = input[getIndex]
        print(currentIndex)
    }
}
stringIndex2(input: "Two")


func pickRandomCity(dict:[String:Int]) -> String {

  // get the sum of the keys in a dictionary
    
  let sum = dict.values.reduce(0, +)
  let random = Int.random(in: 1...sum)
  var cumulative = 0
  for (city, population) in dict {
      cumulative += population
      if random <= cumulative {
        return city
      }
  }
  return " "
}
print(pickRandomCity(dict: ["New York" : 7,
                            "San Francisco" : 5,
                            "Los Angeles" : 8 ]))


func palindrome(_ x: String) -> Bool {
    return String(x.reversed()) == x
}
print(palindrome("abba"))

func palindromeInt(_ x: Int) -> Bool {
    let StringInt = String(x)
    return String(StringInt.reversed()) == StringInt
}

print(palindromeInt(121))
