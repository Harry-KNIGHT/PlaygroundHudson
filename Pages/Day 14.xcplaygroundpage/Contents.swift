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

// 3. Optional Chainning

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

// 4.


// 5.

// 6.
