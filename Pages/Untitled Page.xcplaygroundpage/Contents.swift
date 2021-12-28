//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)
// 1. Protocols

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

// 3.

// 4.

// 5.

// 6.


