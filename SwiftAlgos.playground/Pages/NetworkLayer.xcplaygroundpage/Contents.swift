//: [Previous](@previous)

import Foundation
import SwiftUI

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Build a type-safe network layer with JSON decoding:

 1. Define a Codable model struct called Post with: id (Int), title (String), body (String)
 2. Define a NetworkError enum with cases: invalidURL, requestFailed(Int), decodingFailed
 3. Write a function decodePosts(from jsonData: Data) -> Result<[Post], NetworkError> that decodes JSON data into an array of Posts

 Requirements:
 - Post must conform to Codable
 - NetworkError must conform to Error
 - decodePosts should return .success([Post]) on valid JSON
 - decodePosts should return .failure(.decodingFailed) on invalid JSON
 */

// 1. Define the Post model
// TODO: struct Post conforming to Codable
struct Post: Codable {
    var id: Int
    var title: String
    var body: String
}
// 2. Define NetworkError
// TODO: enum NetworkError conforming to Error
enum NetworkError: Error {
    case invalidURL
    case requestFailed
    case decodingFailed
}
// 3. Decode posts from JSON data
func decodePosts(from jsonData: Data) -> Result<[Post], NetworkError> {
    // TODO: Implement using JSONDecoder
    do {
        let posts = try JSONDecoder().decode([Post].self, from: jsonData)
        return .success(posts)
    } catch {
        return .failure(.decodingFailed)
    }
}
