//: [Previous](@previous)

import Foundation
import UIKit



// 1. Creating basic closures —————————————————————————————————————————————————————————————————————————————————————————————————
let driving = {
    print("Baby you can drive my car")
}
driving()

// 2.Accepting parameters in a closure ————————————————————————————————————————————————————————————————————————————————————————

let drive = { (city: String) in
    print("I'm going to \(city) in my car !")
}
drive("Paris")
// 3. Returning values from a closure —————————————————————————————————————————————————————————————————————————————————————————

let drivingWithReturn = { (place: String) -> String in
   return "I am going to \(place)"
}

let message = drivingWithReturn("London")
print(message)

// 4. Closures as parameters 5.Trailing closure syntax ————————————————————————————————————————————————————————————————————————

/*
Because closures can be used just like strings and integers, you can pass them into functions.
 
If we wanted to pass that closure into a function so it can be run inside that function, we would specify the parameter type
as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.

So, we can write a travel() function that accepts different kinds of traveling actions, and prints a message before and after:
 */

func travel(action: () -> Void) {
    print("I'm getting ready to go.")
    action()
    print("I arrived!")
}
travel(action: driving)

travel {
    print("I'm driving my car")
}
