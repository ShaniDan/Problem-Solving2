//: [Previous](@previous)

import Foundation

/*
 --- Part Two ---
 The elves are also running low on ribbon. Ribbon is all the same width, so they only have to worry about the length they need to order, which they would again like to be exact.

 The ribbon required to wrap a present is the shortest distance around its sides, or the smallest perimeter of any one face. Each present also requires a bow made out of ribbon as well; the feet of ribbon required for the perfect bow is equal to the cubic feet of volume of the present. Don't ask how they tie the bow, though; they'll never tell.

 For example:

 A present with dimensions 2x3x4 requires 2+2+3+3 = 10 feet of ribbon to wrap the present plus 2*3*4 = 24 feet of ribbon for the bow, for a total of 34 feet.
 A present with dimensions 1x1x10 requires 1+1+1+1 = 4 feet of ribbon to wrap the present plus 1*1*10 = 10 feet of ribbon for the bow, for a total of 14 feet.
 How many total feet of ribbon should they order?
 */ 


// Read txt file

func readTxt() {
    
    guard let filePath = Bundle.main.path(forResource: "day2.1.2015", ofType: "txt") else {
        fatalError("File not found")
    }
    
    let input = try! String(contentsOfFile: filePath, encoding: .utf8)
    let lines = input.split(separator: "\n")
    
    var totalRibbon = 0
    
    for line in lines {
        let values = line.split(separator: "x").compactMap { Int($0) }
            .compactMap { Int($0) }
        
        guard values.count == 3 else {
            print("Invalid line format: \(line)")
            continue
        }
        
        let result = amountOfRibbon(height: values[0], width: values[1], depth: values[2])
        
        totalRibbon += result
        
//        print("Ribbon needed for dimensions \(values): \(result)")
    }
    print("Total ribbon needed: \(totalRibbon)")
}

func amountOfRibbon(height: Int, width: Int, depth: Int) -> Int {
    var resultArray = [height, width, depth]

    // Remove the biggest number
    if let biggest = resultArray.max(), let index = resultArray.firstIndex(of: biggest) {
        resultArray.remove(at: index)
    }

    // Duplicate the remaining numbers
    let duplicateNumbers = resultArray.flatMap { Array(repeating: $0, count: 2) }

    // Calculate the sum of the duplicated numbers
    let sum = duplicateNumbers.reduce(1, *)

    // Calculate the product of the dimensions
    let dimensionSum = height * width * depth

    // Add the sum and product to get the final result
    return dimensionSum + sum
}

readTxt()


//print(amountOfRibbon(height: 2, width: 3, depth: 4)) // should be 34
//print(amountOfRibbon(height: 1, width: 1, depth: 10)) // should be 14


let testInput = """

2x3x4
1x1x10

"""
