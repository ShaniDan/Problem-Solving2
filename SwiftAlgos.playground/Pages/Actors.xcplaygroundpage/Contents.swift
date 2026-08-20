//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Actors are reference types with a built-in serial executor that guarantees only one task can access their mutable state at a time
 */
actor BankAccount {
    let owner: String
    private var balance: Double
    
    init(owner: String, balance: Double) {
        self.owner = owner
        self.balance = balance
    }
    func deposit(_ amount: Double) {
        balance += amount
    }
    func getBalance() -> Double {
        return balance
    }
}

// Accessing Actor Properties
// Must use await from outside
let account = BankAccount(owner: "Alica", balance: 1000)
Task {
    await account.deposit(500)
    let balance = await account.getBalance()
    print(balance)
}
// nonisolated
actor Logger {
    nonisolated let id: String
    private var logs: [String] = []
    init(id: String) {
        self.id = id
    }
}
let logger = Logger(id: "main")
print(logger.id) // No await needed

/*
 Create an actor `Counter` with a private `count` starting at 0, an `increment()` method, and a `getCount()` method. Increment it 3 times and print the count.
 */
actor Counter {
    private var count = 0
    
    func increment() {
        count += 1
    }
    
    func getCount() -> Int {
        return count
    }
}

let counter = Counter()
Task {
    await counter.increment()
    await counter.increment()
    await counter.increment()
    await counter.increment()
    print(await counter.getCount())
}
