//: [Previous](@previous)

import Foundation

/* MARK: Main difference between Classes and the Structs:
 
 MARK: 1. Reference vs. Value Types:
 
 // MARK: Classes are reference types, which means that when you assign a class instance to a variable or pass it as a parameter, the reference is passed to the same instance in memory. Changes made to one reference will affect all references pointing to the same instance.
 
 */


class Coffee {
    let name: String
    var flavor: String
    
    init(name: String, flavor: String) {
        self.name = name
        self.flavor = flavor
    }
}

let myCoffee = Coffee(name: "Espresso", flavor: "Bitter")
// if i print "myCoffe.flavor" it will be "Sweet"
let newCoffee = myCoffee // passing the reference of myCoffee
newCoffee.flavor = "sour"
// Now if i print -> myCoffee.flavor it will print "sour"
debugPrint(myCoffee.flavor) // sour
print("\(newCoffee.flavor)")

/*  MARK: Structs are value types. When the struct instance is assigned to a variable or pass it as a parameter, a copy of the instance is made. Changes to one copy won't affect other copies.
 */

struct Soda {
    let name: String?
    var flavor: String?
    
    init(name: String?, flavor: String? = nil) {
        self.name = name
        self.flavor = flavor
    }
}

let soda = Soda(name: "test", flavor: "sweet")
// print "myCoffee.flavor" it will be "sweet"
var newSoda = soda // pass a copy/sweet print of myCoffee
newSoda.flavor = "sour"
// Now print -> myCoffee.flavor it will print "sour"
debugPrint(newSoda.flavor) // sour

// MARK: 2. Mutability:
/*
 
 */



