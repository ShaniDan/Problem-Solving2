//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Codable ( Encodable & Decodable ) is Swift's protocol for structured serialization.
 */

// Basic Codable
struct User: Codable {
    let name: String
    let age: Int
}

// Encoding to JSON
let user = User(name: "Alice", age: 28)
let data = try! JSONEncoder().encode(user)
print(String(data: data, encoding: .utf8)!)
// Decoding
let decoder = try! JSONDecoder().decode(User.self, from: data)
print("Name: \(decoder.name), Age: \(decoder.age)")
// Custom Coding Keys
struct Product: Codable {
    let productName: String
    enum CodingKeys: String, CodingKey {
        case productName = "product_name"
    }
}

struct Book: Codable {
    let title: String
    let pages: Int
}

let book = Book(title: "Moon", pages: 129)
let encodeData = try! JSONEncoder().encode(book)
let decodeData = try! JSONDecoder().decode(Book.self, from: encodeData)
print("Book name: \(decodeData.title), Number of pages: \(decodeData.pages)")
