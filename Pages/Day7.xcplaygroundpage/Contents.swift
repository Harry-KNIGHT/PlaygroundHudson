//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

// 1. Using closures as parameters when they accept parameters ————————————————————————————————————————————————————————————————
/*
 We’ve been using () -> Void to mean “accepts no parameters and returns nothing”, but you can go ahead and fill the () with
 the types of any parameters that your closure should accept.
 
 To demonstrate this, we can write a travel() function that accepts a closure as its only parameter, and that closure in turn
 accepts a string:
 */
func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}
// Now when we call travel() using trailing closure syntax, our closure code is required to accept a string:
travel { (place: String) in
    print("I'm going to \(place) in my car")
}

// 2.

func traveling(action: (String) -> String) {
    print("I'm getting ready to go")
    let description = action("New-York")
    print(description)
    print("I arrived")
}

traveling { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

// 3. Shorthand parameter names

travel {
    "I'm going to \($0) in my car"
}

// 4.

// 5.

// 6.

// 7.
