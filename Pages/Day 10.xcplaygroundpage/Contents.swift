//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// 1. Creating your own classes

class Dog {
    var name: String
    var breed: String
    
    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
    
    
}
//let snoopy = Dog(name: "Poppy", breed: "Poodle")




// 2. Class inheritance

/*
 The second difference between classes and structs is that you can create a class based on an existing class – it inherits all the properties and methods of the original class, and can add its own on top.
 
 This is called class inheritance or subclassing, the class you inherit from is called the “parent” or “super” class, and the new class is called the “child” class.
 */
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}
// 3.

/*
 Child classes can replace parent methods with their own implementations – a process known as overriding. Here’s a trivial Dog class with a makeNoise() method:
*/

class DogTwo {
    func makeNoise() {
        print("woof")
    }
}
class PoodleTwo: DogTwo {
    override func makeNoise() {
        print("Hell yeah !")
    }
}
let poppy = PoodleTwo()
poppy.makeNoise()

// 4.

// 5.


// 6.

// 7.

// 8.
