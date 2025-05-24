//: [Previous](@previous)

import Foundation
import CryptoKit

/*
 --- Day 4: The Ideal Stocking Stuffer ---
 Santa needs help mining some AdventCoins (very similar to bitcoins) to use as gifts for all the economically forward-thinking little girls and boys.

 To do this, he needs to find MD5 hashes which, in hexadecimal, start with at least five zeroes. The input to the MD5 hash is some secret key (your puzzle input, given below) followed by a number in decimal. To mine AdventCoins, you must find Santa the lowest positive number (no leading zeroes: 1, 2, 3, ...) that produces such a hash.

 For example:

 If your secret key is abcdef, the answer is 609043, because the MD5 hash of abcdef609043 starts with five zeroes (000001dbbfa...), and it is the lowest such number to do so.
 If your secret key is pqrstuv, the lowest number it combines with to make an MD5 hash starting with five zeroes is 1048970; that is, the MD5 hash of pqrstuv1048970 looks like 000006136ef....
 */

func md5String(for input: String) -> String {
    let digest = Insecure.MD5.hash(data: Data(input.utf8))
    
    // MARK: Lowest positive number

    return digest.map {
        String(format: "%02hhx", $0)
    }.joined()
}

for i in 1...2_000_000 {
    let md5 = md5String(for: "pqrstuv\(i)")
    if md5.hasPrefix("00000") {
        print(i)
        break
    }
//    print(md5)
}

// 69d243adff53278a958fc81188a16391


