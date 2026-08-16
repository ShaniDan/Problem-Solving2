//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
protocol HasArea {
    var area: Double { get }
}
extension HasArea {
    func isLarge() -> Bool {
        return area > 100
    }
}

struct Rectangle: HasArea {
    var width: Double
    var height: Double
    var area: Double { width * height }
}

let rect = Rectangle(width: 15, height: 8)
print(rect.isLarge())
