//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

/*
 The clerk quickly discovers that there are still invalid IDs in the ranges in your list. Maybe the young Elf was doing other silly patterns as well?

 Now, an ID is invalid if it is made only of some sequence of digits repeated at least twice. So, 12341234 (1234 two times), 123123123 (123 three times), 1212121212 (12 five times), and 1111111 (1 seven times) are all invalid IDs.

 From the same example as before:

 11-22 still has two invalid IDs, 11 and 22.
 95-115 now has two invalid IDs, 99 and 111.
 998-1012 now has two invalid IDs, 999 and 1010.
 1188511880-1188511890 still has one invalid ID, 1188511885.
 222220-222224 still has one invalid ID, 222222.
 1698522-1698528 still contains no invalid IDs.
 446443-446449 still has one invalid ID, 446446.
 38593856-38593862 still has one invalid ID, 38593859.
 565653-565659 now has one invalid ID, 565656.
 824824821-824824827 now has one invalid ID, 824824824.
 2121212118-2121212124 now has one invalid ID, 2121212121.
 Adding up all the invalid IDs in this example produces 4174379265.

 What do you get if you add up all of the invalid IDs using these new rules?
 */

func solution(_ input: [Int]) -> Int64 {
    var result = 0
    return Int64(result)
}


var sampleInput = ["11-22", "95-115","998-1012","1188511880-1188511890","222220-222224","1698522-1698528","446443-446449","38593856-38593862","565653-565659","824824821-824824827","2121212118-2121212124"]

let ranges = [
    "269194394-269335492",
    "62371645-62509655",
    "958929250-958994165",
    "1336-3155",
    "723925-849457",
    "4416182-4470506",
    "1775759815-1775887457",
    "44422705-44477011",
    "7612653647-7612728309",
    "235784-396818",
    "751-1236",
    "20-36",
    "4-14",
    "9971242-10046246",
    "8796089-8943190",
    "34266-99164",
    "2931385381-2931511480",
    "277-640",
    "894249-1083306",
    "648255-713763",
    "19167863-19202443",
    "62-92",
    "534463-598755",
    "93-196",
    "2276873-2559254",
    "123712-212673",
    "31261442-31408224",
    "421375-503954",
    "8383763979-8383947043",
    "17194-32288",
    "941928989-941964298",
    "3416-9716"
]

