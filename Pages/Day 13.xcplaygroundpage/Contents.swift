//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

//: [Next](@next)
// Review what we seen last 12 days.


// 1. Variables, constants

var name = "Elliot"
name = "Arthur"

var firstName = "Jesus"
firstName = "Jesus Espejo"

let counter = 10
//conter -= 1  It cant be made bc it's a constant

// 2. Types of data

var bike: String = "Decathlon"
bike = "Go Sport"

var nothingInBrain: Bool
nothingInBrain = true

var floatNumber: Float = 192384.4455

var doubleNumber: Double = 192384.4455

var integer: Int = 1255


// 3. Operator

var a = 10
a = a + 1
a = a - 1
a = a * 10

a += 1
a -= 1
a *= 10
a = 10

var b = 10

var c = a + b

c > 10
c > 100
c >= 20


var name1 = "Tobey Maguire"
var name2 = "TObey MAguire"
var both = name1 + " and " + name2

name1 == name2
name1 != "Tobey Maguire"



// 4. String interpolation

var user: String = "Harry"
var age = 25

"Hello \(user), you are \(age) years old"

"Hello \(user), you are \(age) years old, in \(age) you will be \(age * 2)"



"Your name is " + user

// 5. Arrays

var myFriends = [String]()
var evenNumbers = [1, 3, 5, 6, 7]
var rockSongs: [String] = ["Shake it Off", "Revolution", "Hey Jude", "Back in Black"]
var rapSongs: [Any] = ["Juicy", "California Love", "Mo' Money Mo' Problems"]

rockSongs.append("Purple Rain")

var twice = rockSongs + rapSongs

twice += ["Still"]

print(twice)

type(of: twice)

// 6. Dictionnaries

var myFamily = [String: String]()

myFamily = ["First": "Tara",
            "Second": "Moira",
            "Third": "Arthur",
            "Fourth": "Elliot"
]

myFamily["Fourth"]


// 7. Conditional Statements

var action: String
var stayOutTooLate = true
var nothingInBrains = true
var person = "hater"

if person == "hater" {
    action = "hate"
}else if person == "player" {
    action = "play"
}else {
    action = "cruise"
}

if stayOutTooLate && nothingInBrains {
    action = "cruise"
}

// ! says if it they're false
if !stayOutTooLate && !nothingInBrains {
    action = "cruise"
}

// 8. Loops

outerloop: for i in 1...10 {
    for j in 1...10 {
        print("\(i) * \(j) = \(i * j)")
        
        if i > 10 {
            break outerloop
        }
    }
}

var string = "Faker gonna"

for _ in 0...5 {
    string += " fake"
}
print(string)

var mySongs = ["Purple Haze", "Birthday", "Redemption Song", "Layla"]

for song in mySongs {
    print("My favorite song is \(song)")
}

var people = ["Players", "Fakers", "Haters"]
var actions = ["play", "fake", "hate"]

for i in 0..<people.count {
    print("\(people[i]), gonna \(actions[i])")
}

for i in 0..<people.count {
    var strings = "\(people[i]) gonna"
    
    for _ in 0...5 {
        strings += " \(actions[i])"
    }
    print(strings)
}


var counting = 0

while true {
    print("Counter is now \(counting)")
    counting += 1
    
    if counting > 10 {
        break
    }
}

for music in mySongs {
    if music == "Purple Haze" {
        continue
    }
    print("My favorite song is \(music)")
}

// 9. Switch case

let liveAlbum = 2

switch liveAlbum {
case 0:
    print("You're just starting out")
case 1:
    print("You juste released in iTunes Lives from Soho")
case 2:
    print("You just released Speak Now World tour")
    
default:
    print("Nothing is real")
    
}
