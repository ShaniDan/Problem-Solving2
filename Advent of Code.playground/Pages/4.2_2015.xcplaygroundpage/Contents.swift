//: [Previous](@previous)

import Foundation
import CryptoKit

var greeting = "Hello, playground"

//: [Next](@next)
func md5String(for input: String) -> String {
    let digest = Insecure.MD5.hash(data: Data(input.utf8))
    
    // MARK: Lowest positive number

    return digest.map {
        String(format: "%02hhx", $0)
    }.joined()
}

for i in 1...1_000_000 {
    let md5 = md5String(for: "pqrstuv\(i)")
    if md5.hasPrefix("0000") {
        print(i)
        break
    }
//    print(md5)
}
