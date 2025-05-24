// The Swift Programming Language
// https://docs.swift.org/swift-book

import Algorithms

func longestCommonPrefix(_ strings: [String]) -> String {
    // It doesn't matter what string we choose.
    // `longestCommonPrefixCount` can't be longer than any of them,
    // and every string contains the longest common prefix.
    let randomString = strings.randomElement()!
    print("1) Random String \(randomString)")

    let pairs: AdjacentPairsCollection<[String]> = strings.adjacentPairs() 

    print("2) Pairs \(pairs)")


    // original below

    let longestCommonPrefixCount = strings.adjacentPairs()
        .reduce(randomString.count) { count, pair in
        print("Current pair: \(pair.0), \(pair.1)")
            let zipped = zip(pair.0, pair.1)
            let commonPrefix = zipped.prefix(count).prefix(while: ==)
            // print("Common prefix: \(String(commonPrefix.map { $0 }))(count: \(commonPrefix.count))")
            return commonPrefix.count
        }
        print("3) Longest \(longestCommonPrefixCount)")
    return .init(randomString.prefix(longestCommonPrefixCount))
}
longestCommonPrefix(["flower", "flow", "flight"])
