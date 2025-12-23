//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 Your job is to find all of the invalid IDs that appear in the given ranges. In the above example:

 11-22 has two invalid IDs, 11 and 22.
 95-115 has one invalid ID, 99.
 998-1012 has one invalid ID, 1010.
 1188511880-1188511890 has one invalid ID, 1188511885.
 222220-222224 has one invalid ID, 222222.
 1698522-1698528 contains no invalid IDs.
 446443-446449 has one invalid ID, 446446.
 38593856-38593862 has one invalid ID, 38593859.
 The rest of the ranges contain no invalid IDs.
 
 Adding up all the invalid IDs in this example produces 1227775554.
 */

func result(_ input: [String]) -> Int64? {
    
    var resultNumbers: [Int64] = []
    
    
    // get all the numbers in the range
    for number in input {
        let parts = number.split(separator: "-")
//        print(parts)
        guard parts.count == 2,
              let start = Int64(parts[0]),
              let end = Int64(parts[1]),
              start <= end else {
            continue
        }
        for number in start...end {
            let stringNumber = String(number)
            // only append numbers that have the even numbers
            guard stringNumber.count % 2 == 0 else { continue }
           
            // split the Int in half
//            guard stringNumber.count % 2 == 0 else { continue }
          
            let middleIndex = stringNumber.index(stringNumber.startIndex, offsetBy: stringNumber.count / 2)
            let firstHalf = stringNumber[..<middleIndex]
            let secondHalf = stringNumber[middleIndex...]
            // check if the both halves have the similar numbers and if they do add them all up
            if firstHalf == secondHalf {
                resultNumbers.append(Int64(firstHalf + secondHalf)!)
            }
        }
    }
        
    print (resultNumbers)
    return resultNumbers.reduce(0, +)
}

let input1 = ["11-22", "95-115","998-1012","1188511880-1188511890","222220-222224","1698522-1698528","446443-446449","38593856-38593862","565653-565659","824824821-824824827","2121212118-2121212124"]

let input2 = ["269194394-269335492","62371645-62509655","958929250-958994165","1336-3155","723925-849457","4416182-4470506","1775759815-1775887457","44422705-44477011","7612653647-7612728309","235784-396818","751-1236","20-36","4-14","9971242-10046246","8796089-8943190","34266-99164","2931385381-2931511480","277-640","894249-1083306","648255-713763","19167863-19202443","62-92","534463-598755","93-196","2276873-2559254","123712-212673","31261442-31408224","421375-503954","8383763979-8383947043","17194-32288","941928989-941964298","3416-9716"]

print(result(input1)!)
