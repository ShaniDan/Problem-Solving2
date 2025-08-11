// The Swift Programming Language
// https://docs.swift.org/swift-book

import Algorithms
import Foundation
import CryptoKit


//: [Next](@next)

func md5String(for input: String) -> String {
    let digest = Insecure.MD5.hash(data: Data(input.utf8))
    
    // MARK: Lowest positive number

    return digest.map {
        String(format: "%02hhx", $0)
    }.joined()
}

func test() {
    for i in 1...2_000_000 {
    let md5 = md5String(for: "pqrstuv\(i)")
    if md5.hasPrefix("000000") {
        print(i)
        break
    }
}
}


