//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)


// 1. Initializers

struct User {
    
    var username: String
    
    init() {
        username = "Anonymous"
        print("Create an account bro")
    }
}

var user = User()
user.username = "Elliot"
print(user.username)


// 2. Referring to the current instance

/*
Inside methods you get a special constant called self, which points to whatever instance of the struct is currently being used. This self value is particularly useful when you create initializers that have the same parameter names as your property.

For example, if you create a Person struct with a name property, then tried to write an initializer that accepted a name parameter, self helps you distinguish between the property and the parameter – self.name refers to the property, whereas name refers to the parameter.
*/

struct Personn {
    var name: String
    
    init(name: String) {
        print("His name is \(name)")
        self.name = name
    }
}


// 3. Lazy properties

struct FamilyTree {
    init() {
        print("Creating familly tree")
    }
}

struct Someone {
    var name: String
    lazy var familyTree = FamilyTree()
    
    init(name: String) {
        self.name = name
    }
}

var zohra = Someone(name: "Zohra")

zohra.familyTree // wrote like this due to the lazy propertie in struct
