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
// 4. Closures as parameters ——————————————————————————————————————————————————————————————————————————————————————————————————

// 5.Trailing closure syntax ——————————————————————————————————————————————————————————————————————————————————————————————————

// 6.       —————————————————————————————————————————————————————————————————————————————————————————————————
