//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// 1. Handling missing data

var age: Int? = nil



// 2. Unwrapping optionals

var name: String? = nil

if let unwrapped = name {
    print("\(unwrapped.count) letters !")
}else {
    print("Missing name")
}

func whatsMyName() -> String? {
    "Taylor"
}

if let username = whatsMyName() {
    print("Your name is \(username)")
}else {
    print("missing name")
}

// 3.

