//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"

//: [Next](@next)

// 1. Functions ———————————————————————————————————————————————————————————————————————————————————————————————————————————————

func favoriteAlbum(_ name: String) {
    print("My favorite is \(name)")
}
favoriteAlbum("Sergent Pepper Lonely Heart Club Band")

func countLetters(_ string: String) {
    print("\(string) has \(string.count) letter")
}

countLetters("I get by with a little help from my friend.")

func isAlbumRollingStones(_ name: String) -> Bool {
    if name == "Rolling Stones" { return true }
    if name == "Let it Bleed" { return true}
    return false
}

if isAlbumRollingStones("Rolling Stones") {
    print("That's them !!!")
}else {
    print("No one know them !")
}
if isAlbumRollingStones("The White Album") {
    print("White Album is from the Beatles !")
}else {
    print("Brown Sugar !")
}

// 2. Optionnals ——————————————————————————————————————————————————————————————————————————————————————————————————————————————

func getHatersStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
var status = getHatersStatus(weather: "rainy")

//—————————————————————————————————————————————————————————————

func takeHaterAction(status: String) {
    if status == "Hate" {
        print("Hating")
    }
}
if let haterStatus = getHatersStatus(weather: "rainy") {
    takeHaterAction(status: haterStatus)
}

//—————————————————————————————————————————————————————————————

func yeatAlbumReleased(name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Beatles" { return 1959 }
    return nil
}

var items = ["James", "John", "Sally"]

func position(of string: String, in array: [String]) -> Int? {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }
    return nil
}

let jamesPosition = position(of: "James", in: items)
let bobPosition = position(of: "Bob", in: items)

// —————————————————————————————————————————————————————————————

func yearAlbumReleased(_ name: String) -> Int? {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    return nil
}

var year = yearAlbumReleased("Beatles")

if year == nil {
    print("There was an error")
}else {
    print("It was released in \(year!)")
}

// 3. Optional Chainning —————————————————————————————————————————————————————————————————————————————————————————————————————————

func albumReleased2(_ years: Int) -> String? {
    switch years {
    case 2006: return "Taylor Swift"
    case 2008: return "Fearless"
    case 2010: return "Speak Now"
    default: return nil
    }
}

let albumm = albumReleased2(20100)?.uppercased() ?? "Unknown"
print("the album is \(albumm)")



let helloWorld = "Hello World"
print(helloWorld.uppercased())

// 4. Enumeration (enums) ————————————————————————————————————————————————————————————————————————————————————————————————————————
enum WeatherType {
    case cloud
    case sun
    case rain
    case wind(speed: Int)
    case snow
}

func getHaterStatuss(meteo: WeatherType) -> String? {
    switch meteo {
    case .cloud, .snow:
        return "Hate"
    case .sun:
        return "Enjoy with your friends"
    case .wind(let speed) where speed < 10:
        return "MEHHHHH"
    default:
        return nil
    }
}
getHaterStatuss(meteo: .wind(speed: 8))

// 5. Structs  ———————————————————————————————————————————————————————————————————————————————————————————————————————————————————

struct Person {
    var clothes: String
    var shoes: String
    
    /* when you write a function inside a struct, it's called a method instead. In Swift you write func whether it's a function or a method, but the distinction is preserved when you talk about them.
     */
    func iLoveThis() {
        print("I love \(clothes) with \(shoes)")
    }
    
}
let elliot = Person(clothes: "T-shirts", shoes: "Sneakers")
let tom = Person(clothes: "Chemises", shoes: "Sneakers")
print(elliot.clothes)
print(tom.clothes)

var elliotCopy = elliot
elliotCopy.shoes = "Flip Flop"

print(elliot)
print(elliotCopy)

// 6. Classes ———————————————————————————————————————————————————————————————————————————————————————————————————————————————————

class Persons {
    var clothes: String
    var shoes: String
    
    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}

// ———————————————————————————

class Singer {
    var name: String
    var age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
    func sing() {
        print("Obladi oblada")
    }
}

// Subclass
class CountrySinger: Singer {
    override func sing() {
            print("You say you want a revolution")
    }
}

class HeavyMetalSinger: Singer {
    var noiseLevel: Int
    
    init(name: String, age: Int, noiseLevel: Int) {
        self.noiseLevel = noiseLevel
        super.init(name: name, age: age)
    }
    override func sing() {
        print("Back in Black !")
    }
    
}


var mcCartney = Singer(name: "Paul McCartney", age: 78)
var lennon = CountrySinger(name: "John Lennon", age: 80)
let acdc = HeavyMetalSinger(name: "ACDC", age: 40, noiseLevel: 155)

mcCartney.age
mcCartney.name
mcCartney.sing()
lennon.sing()
acdc.sing()
acdc.noiseLevel
