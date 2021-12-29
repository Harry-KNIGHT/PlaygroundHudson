//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// 1. Protocols
/* muted them for let 5th exercice work
 
protocol Identifiable {
    var id: String { get set }
}
/* We can’t create instances of that protocol - it’s a description of what we want, rather than something we can create and use directly. But we can create a struct that conforms to it:
*/

struct User: Identifiable {
    var id: String
}

func displayId(thing: Identifiable) {
    print("My id is \(thing.id)")
}
 
*/
// 2. Protocol inheritance


protocol Payable {
    func calculWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

/* We can now create a single Employee protocol that brings them together in one protocol */

protocol Employee: Payable, NeedsTraining, HasVacation { }

// 3. Extension

extension Int {
    func squared() -> Int {
        return self * self
    }
}

let number = 3
number.squared()

extension Int {
    var isEven: Bool {
        return self % 2 == 0
        
    }
}
// 4.

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = (["John", "Paul", "George", "Ringo"])

/*
 Swift’s arrays and sets both conform to a protocol called Collection, so we can write an extension to that protocol to add a
 summarize() method to print the collection neatly
*/
extension Collection {
    func summarize() {
        print("There are \(count) of us")
    
        for name in self {
            print(name)
        }
    }
}
// Both Array and Set will now have that method, so we can try it out:
pythons.summarize()
beatles.summarize()

// 5.

protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let ellioto = User(id: "ElliotoOo")
ellioto.identify()
// 6.


