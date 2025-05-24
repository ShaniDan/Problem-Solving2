// The Swift Programming Language
// https://docs.swift.org/swift-book

import Algorithms

func longestCommonPrefix(_ strings: [String]) -> String {
  // It doesn't matter what string we choose.
  // `longestCommonPrefixCount` can't be longer than any of them,
  // and every string contains the longest common prefix.
  let randomString = strings.randomElement()!
    print(randomString)

  let longestCommonPrefixCount = strings.adjacentPairs()
    .reduce(randomString.count) { count, pair in
      zip(pair.0, pair.1)
        .prefix(count) // ensures that `count` can only stay the same or decrease.
        .prefix(while: ==).count
    }
  return .init(randomString.prefix(longestCommonPrefixCount))
}
longestCommonPrefix(["flower","flow","flight"])
