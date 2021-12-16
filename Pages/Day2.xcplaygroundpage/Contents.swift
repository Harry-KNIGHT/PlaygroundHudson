//: [Previous](@previous)

import Foundation

/* https://www.hackingwithswift.com/100/2 */

// 1. Arrays ——————————————————————————————————————————————————————————————————————————————————————————————————————————
let arrayOfFriends = ["Elliot", "Jeronimo", "Arthur", "Tom", "Frike"]
arrayOfFriends[0]

var arrayDecalaration1: [String] = []

var arrayDesclaration2 = [String]()

var numbers: [Int] = [10, 20, 30, 40, 50, 60]

print(numbers[2])
numbers.remove(at: 2)
print(numbers[2])

let boolArray: [Bool] = [true, false, true]

/* Be careful: Swift crashes if you read an item that doesn’t exist. For example, trying to read beatles[9] is a bad idea.
 Note: If you’re using type annotations, arrays are written in brackets: [String], [Int], [Double], and [Bool]. */

// 2. Sets ————————————————————————————————————————————————————————————————————————————————————————————————————————————

/*
 Sets are collections of values just like arrays, except they have two differences:
 Items aren’t stored in any order; they are stored in what is effectively a random order.
 No item can appear twice in a set; all items must be unique.
 This difference means that sets are more useful for times when you want to say “does this item exist?”
 */

var set1 = Set(["Elliot", "Aurélie", "Jerôme"])
var set2 = Set(["Elliot", "Aurélie", "Jérome", "Elliot"])

// 3. Tuples ——————————————————————————————————————————————————————————————————————————————————————————————————————————

/*
 Tuples allow you to store several values together in a single value. That might sound like arrays, but tuples are     different:
 
 1. You can’t add or remove items from a tuple; they are fixed in size.
 2. You can’t change the type of items in a tuple; they always have the same types they were created with.
 3. You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.
 */

var website = (name: "Apple", url: "www.apple.com")
website.name
website.url

/*
 Remember, you can change the values inside a tuple after you create it, but not the types of values. So, if you tried to change name to be (first: "Justin", age: 25) you would get an error.
 
 Dictionaries provide an interesting third case, because they give us some of the name safety of tuples but can grow and change like arrays. I say “some of the name safety” because we can’t guarantee that a particular value exists in a dictionary like we can with a tuple – we just need to try reading it and handle the optional that comes back.
 */

// 4. Array vs set vs tuples ——————————————————————————————————————————————————————————————————————————————————————————

/* If you need a specific, fixed collection of related values where each item has a precise position or name, you should use a tuple:
 */

let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

/*
 If you need a collection of values that must be unique or you need to be able to check whether a specific item is in there extremely quickly, you should use a set:
 */

let set = Set(["aardvark", "astronaut", "azalea"])

/*
If you need a collection of values that can contain duplicates, or the order of your items matters, you should use an array:
*/

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// Arrays are by far the most common of the three types.

// 5. Dictionnaries ———————————————————————————————————————————————————————————————————————————————————————————————————

/*
Dictionaries and arrays are both ways of storing lots of data in one variable, but they store them in different ways: dictionaries let us choose a “key” that identifies the item we want to add, whereas arrays just add each item sequentially.
 */
let height = ["Elliot": 1.84, "Jeronimo": 1.75]

height["Elliot"]

// 6. Dictionnary default value ———————————————————————————————————————————————————————————————————————————————————————

let favoriteAlbum = ["Elliot": "Abbey Road",
                     "Mickael": "Certified Lover Boy"]
favoriteAlbum["Elliot"]
favoriteAlbum["Arthur", default: "Unknow"]

// 7. Creating empty collections ——————————————————————————————————————————————————————————————————————————————————————

// Emplty array
var emptyArray1 = [Double]()
var emptyArray2 = Array<Int>()

//Empty Dictionnary
var emptyDictionnary1 = [String: String]()
emptyDictionnary1["Elliot"] = "Green"

var emptyDictionnary2 = Dictionary<String, Int>()

//Empty Set
var emptySetString = Set<String>()
var emptySetInt = Set<Int>()

// 8. Enumeration —————————————————————————————————————————————————————————————————————————————————————————————————————

let result = "Fail"
let result2 = "Sucees"

enum Result {
    case failure
    case succes
}

let result4 = Result.failure

enum Direction {
    case east
    case north
    case south
    case ouest
}

let thatWay = Direction.north

// 9. Enum associated values ——————————————————————————————————————————————————————————————————————————————————————————

enum Activity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}
let talking = Activity.talking(topic: "Football")

// 10. Enum raw value —————————————————————————————————————————————————————————————————————————————————————————————————

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let venus = Planet(rawValue: 2)

/* 10. Final
https://www.hackingwithswift.com/sixty/2/11/complex-types-summary
 */

