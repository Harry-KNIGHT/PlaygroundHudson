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
// 3. Overriding methods

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

// 4. Final classes

/* Although class inheritance is very useful – and in fact large parts of Apple’s platforms require you to use it – sometimes you want to disallow other developers from building their own class based on yours.
 
 Swift gives us a final keyword just for this purpose: when you declare a class as being final, no other class can inherit from it. This means they can’t override your methods in order to change your behavior – they need to use your class the way it was written.
*/

final class spaceShip {
    func fly() {
        print("Lucy in the sky with diamonds")
    }
}

// 5. Copying objects

class Singer {
    var name = "Taylor Swift"
}
var singer = Singer()
print(singer.name)

singer.name = "Tom Petty"
print(singer.name)
/* On the other hand, if Singer were a struct then we would get “Taylor Swift” printed a second time. */

// 6. Deinitializers

class Person {
    var name = "John Lennon"
    
    init() {
        print("\(name) is still alive !")
    }
    func alwaysAlive() {
        print("I'm \(name), and I'm still alive")
    }
    
    deinit {
        print("\(name) is no more")
    }
}
/* We’re going to create a few instances of the Person class inside a loop, because each time the loop goes around a new person will be created then destroyed: */
for _ in 0..<1 {
    let person = Person()
    person.alwaysAlive()
}
// 7. Mutability

/* The final difference between classes and structs is the way they deal with constants. If you have a constant struct with a variable property, that property can’t be changed because the struct itself is constant.
 
 However, if you have a constant class with a variable property, that property can be changed. Because of this, classes don’t need the mutating keyword with methods that change properties; that’s only needed with structs.

 This difference means you can change any variable property on a class even when the class is created as a constant – this is perfectly valid code:
 */


class Singers {
   // If you want to stop that from happening you need to make the property constant:
    let name = "Taylor Swift"
  //  var name = "Taylor Swift"
}

let taylor = Singers()
taylor.name = "Ed Sheeran"
print(taylor.name)

// 8.
