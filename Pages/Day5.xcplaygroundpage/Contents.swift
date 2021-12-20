//: [Previous](@previous)

import Foundation
import CoreFoundation

// 1. Writing functions

func helloWorld() {
    let message = "HelloWorld"
    print(message)
}
helloWorld()

// 2. Accepting parameters

func square(number: Int) {
    print(number * number)
}
square(number: 7)

// 3. Returning value

func squareTwo(number: Int) -> Int {
    return number * number
}
let result = squareTwo(number: 8)
print(result)

// Array
func getUser() -> [String] {
    ["Taylor", "Swift"]
}

let user = getUser()
print(user[0])

/* Dictionnary
func getUserTwo() -> [String: String] {
    ["first": "Taylor", "last": "Swift"]
}
let userTwo = getUserTwo()
print(userTwo["last"])
*/

// 4. Parameter labels

func sayHello(to name: String) {
    print("Hello \(name)")
}
/*
 The parameter is called to name, which means externally it’s called to, but internally it’s called name. This gives variables
 a sensible name inside the function, but means calling the function reads naturally:
 */
sayHello(to: "Elliot")

// 5. Omitting parameter labels

func greet(_ person: String) {
    print("Hello, \(person)")
}
greet("Arthur")
// greet(person: "zizi") This would make an error due to the _
/* You can get this same behavior in your own functions by using an underscore, _, for your external parameter name.
You can now call greet() without having to use the person parameter name */


// 6. Default parameters

func greets(_ person: String, nicely: Bool = true) {
    if nicely == nicely {
        print("Hi \(person) how are you ?")
    }else {
        ("Oh no it's \(person) again ...!")
    }
}
greets("Bouba", nicely: false)

// 7. Variadic functions

func squareThree(numbersThree: Int...) {
    for number in numbersThree {
        print("\(number) squared is \(number * number)")
    }
}
squareThree(numbersThree: 1, 2, 4, 5, 6)
// 8. Writing throwing functions, 9. Running throwing functions

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }
    return true
}

do {
    try checkPassword("password")
    print("that password is good")
    
} catch {
    print("You can't use that password")
}
// 10. Inout parameters

func doubleInPlace(integer: inout Double) {
    integer *= 2.0
    print(integer)
}

var myNum = 10.0
doubleInPlace(integer: &myNum)
