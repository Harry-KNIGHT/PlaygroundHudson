//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

//: [Next](@next)

// 1. Handling missing data ———————————————————————————————————————————————————————————————————————————————————————————————————

var age: Int? = nil



// 2. Unwrapping optionals ————————————————————————————————————————————————————————————————————————————————————————————————————

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

// 3. Unwrapping with guard ———————————————————————————————————————————————————————————————————————————————————————————————————

func greet(_ name: String?) {
    guard let unwrapped = name else {
        print("Hello, you didn't provide a name")
        return
    }
    print("Hello \(unwrapped)")
}

greet("Elio")


// 4. Force unwrapping ————————————————————————————————————————————————————————————————————————————————————————————————————————

/*
 Even though Swift isn’t sure the conversion will work, you can see the code is safe so you can force unwrap the result by
 writing ! after Int(str)
*/

let str = "4"
let int = Int(str)!

// 5. Implicitly unwrapped optionals ——————————————————————————————————————————————————————————————————————————————————————————

let dollarsLeft: Int! = nil

// 6. Nil coalescing ——————————————————————————————————————————————————————————————————————————————————————————————————————————

func username(for id: Int) -> String? {
    if id == 1 {
        return "Clin Eastwood"
    }else {
        return nil
    }
}
/*
 If we call that with ID 15 we’ll get back nil because the user isn’t recognized, but with nil coalescing we can provide a
 default value of “Anonymous” like this:
 */
username(for: 15) ?? "Anonymous"
/*
 That will check the result that comes back from the username() function: if it’s a string then it will be unwrapped and
 placed into user, but if it has nil inside then “Anonymous” will be used instead.
 */

// 7. Optional chaining ———————————————————————————————————————————————————————————————————————————————————————————————————————

let groupe = ["John", "Paul", "George", "Ringo"]

let beatles = groupe.last?.uppercased()

// 8. Optional try

enum PasswordError: Error {
    case obvious
}
func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}
/*
do {
    try checkPassword("password")
    print("That password is good")
} catch {
    print("bad password")
}
*/
// There are two alternatives to try, both of which will make more sense now that you understand optionals and force unwrapping

if let result = try? checkPassword("Password") {
    print("Result was \(result)")
}else {
    print("D'oh")
}
try! checkPassword("sekrit")
print("OK !")


