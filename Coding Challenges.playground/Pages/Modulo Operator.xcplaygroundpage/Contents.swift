//: [Previous](@previous)

import Foundation

func breakNumberIntoDigitis(_ input: Int) -> Int {
    var digits = 0
    // we need to make it mutatable because of this "Cannot assign to value: 'input' is a 'let' constant"
    var currentNumber = input
    
    // runtime of this algorithm is O(n) in respect to the number of digits in the input
    
    // we have to use a while loop because we don't know how many loops we'll need
    
    while currentNumber > 0 {
        
        let digit = currentNumber % 10
        digits += digit // this return 10
        currentNumber = currentNumber / 10
        
    }
    
    return digits
//    return digits.reduce(0, +)  this return 10 which is the total
}
print(breakNumberIntoDigitis(1234))


var list = [0, 1, 2, 3, 4, 5]

for item in list {
    print(item)
}

var i = 0
while i != list.count {
    if list[i] == 7 {
        list.remove(at: i)
    } else {
        i += 1
    }
}
print(list)


func longestCommonPrefix(_ input: [String]) -> String {
    guard let first = input.first else { return "" }
  // empty variable to hold the prefixes
    var prefix = ""
    // loop over the input by accessing its index
    for (i, char) in first.enumerated() {
      for str in input {
        if i >= str.count || str[str.index(str.startIndex, offsetBy: i)] != char {
          return prefix
        }
      }
      prefix.append(char)
    }
    
    return prefix
}
print(longestCommonPrefix(["flower", "flow", "flight"]))

