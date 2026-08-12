//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
/*
 Opaque Types - Compile-Time Type Identity with some
 The some keyword creates opaque return types. It tells the compiler: "I am returning one specific, concrete type that conforms to this protocol. I refuse to tell the caller exactly what it is, but YOU (the compiler) know exactly what it is." This enables static dispatch and aggressive optimization.
 */

/*
 Opaque types are the entire architectural backbone of SwiftUI. Whenever you declare "var body: some View", you are generating a massively complex nested stack of specific structs
 */
/*
 - Opaque Return Type
 - The caller only knows they hold "a Shape"
 - The compiler mathemetically knows they hold a "Circle"
 */

protocol MyShape {
    func area() -> Double
}

struct Circle: MyShape {
    var radius: Double
    
    func area() -> Double {
        .pi * radius * radius
    }
}

func makeOpaqueShape() -> some MyShape {
    return Circle(radius: 5)
}

let myShape = makeOpaqueShape()
print(myShape.area())
