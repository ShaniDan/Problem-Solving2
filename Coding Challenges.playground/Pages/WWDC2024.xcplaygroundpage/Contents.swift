//: [Previous](@previous)

import Foundation

struct User {
    let username: String
    var isVisible: Bool = true
    private(set) var friends: [String] = []
    
    mutating func addFriend(username: String) throws {
        guard username != self.username else {
            throw SocialError.befriendingSelf
        }
        guard !friends.contains(username) else {
            throw SocialError.duplicateFriend(username: username)
        }
        friends.append(username)
    }
}

enum SocialError: Error {
    case befriendingSelf
    case duplicateFriend(username: String)
}

var alice = User(username: "alice")
do {
    try alice.addFriend(username: "charlie")
    try alice.addFriend(username: "charlie")
} catch {
    error
        
}

var allUsers = [
    "alice": alice
]

func findUser(_ username: String) -> User? {
    allUsers[username]
}

if let charlie = findUser("charlie") {
    print("Found \(charlie)")
} else {
    print("charlie not found")
}

