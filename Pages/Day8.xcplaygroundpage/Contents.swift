//: [Previous](@previous)

import Foundation

// 1. Creating your own structs,  2. Computed properties

struct Sport {
    var name: String
    var isOlympicSport: Bool
    
    var olympicStatus: String {
        if isOlympicSport {
            return "\(name) is olympic sport"
        }else {
            return "\(name) isn't olympic sport"
        }
    }
}


let tennis = Sport(name: "Tennis", isOlympicSport: true)
let chess = Sport(name: "Chess", isOlympicSport: false)
// tennis.name = "Lawn Tennis"
print(tennis.olympicStatus)
print(chess.olympicStatus)


// 3. Property observers
/* What we want to happen is for Swift to print a message every time amount changes, and we can use a didSet property observer
 for that. This will run some code every time amount changes:
 */
struct Progress {
    var task: String
    var amount: Int {
        didSet {
        print("\(task) is now \(amount)‰ complete")
        }
    }
}

var progress = Progress(task: "Loading data", amount: 0)

progress.amount = 30
progress.amount = 69
progress.amount = 99

// 4.
// Function inside struct are called METHODS

struct City {
    var population: Int
    
    func collectTaxes() -> Int {
        return population * 1000
    }
}
let london = City(population: 9_000_000)
print(london.collectTaxes())

// 5. Mutating methods

struct Person {
    var name: String
    
    mutating func makeAnonymous() {
        name = "Anonymous"
    }
}
var person = Person(name: "Mickael")
print(person)
print(person.makeAnonymous())

// 6. Properties and methods of strings

let string = "You're asking me will my love grow, I don't know, I don't know"
print(string.count)
print(string.uppercased())
print(string.hasPrefix("Love"))
print(string.sorted())
print(string.isEmpty)
print(string.dropLast())

// 7. Properties and methods of arrays


var toys: [String] = ["Woody"]

toys.append("Buzz")

toys.firstIndex(of: "Buzz")

print(toys.sorted())
toys.remove(at: 0)
