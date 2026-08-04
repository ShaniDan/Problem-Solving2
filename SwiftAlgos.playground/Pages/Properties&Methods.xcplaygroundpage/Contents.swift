//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Stored vs. Computed Properties
 Stored properties hold a value. Computed properties calculate a value each time
 */
/*
 Create a struct `Circle` with a stored property `radius` (Double). Add a computed property `area` that returns π × radius² (use 3.14159). Create a circle with radius 5 and print the area.
 */

struct Circle {
    var radius: Double
    var area: Double {
        return 3.14159 * radius * radius
    }
}

let circle = Circle(radius: 5)
print(circle.area)
