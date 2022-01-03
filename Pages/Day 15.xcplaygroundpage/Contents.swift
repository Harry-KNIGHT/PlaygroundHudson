//: [Previous](@previous)

import Foundation
import UIKit
var greeting = "Hello, playground"

//: [Next](@next)

// 1. Properties


struct Person1 {
    var clothes: String
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
}

let taylor = Person1(clothes: "T-shirts", shoes: "sneakers")
let other = Person1(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()
 

/*
 Property observers

 There are two kinds of property observer: willSet and didSet, and they are called before or after a property is changed. In
 willSet Swift provides your code with a special value called newValue that contains what the new property value is going to
 be, and in didSet you are given oldValue to represent the previous value.


struct Person {
    var clothes: String {
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
}

func updateUI(msg: String) {
    print(msg)
}

var taylors = Person(clothes: "T-shirts")
taylors.clothes = "short skirts"
*/
/*
 Computed properties
 
 It's possible to make properties that are actually code behind the scenes. We already used the uppercased() method of strings, for example, but there’s also a property called capitalized that gets calculated as needed, rather than every string always storing a capitalized version of itself.

 To make a computed property, place an open brace after your property then use either get or set to make an action happen at the appropriate time. For example, if we wanted to add a ageInDogYears property that automatically returned a person's age multiplied by seven, we'd do this: */

struct DogInPerson {
    var age: Int

    var ageInDogYears: Int {
        // Note: If you intend to use them only for reading data you can just remove the get part entirely
        get {
            return age * 7
        }
    }
}

var fan = DogInPerson(age: 25)
print(fan.ageInDogYears)

// 2. Static properties and methods

/*
 Swift lets you create properties and methods that belong to a type, rather than to instances of a type. This is helpful for organizing your data meaningfully by storing shared data.
 
 Swift calls these shared properties "static properties", and you create one just by using the static keyword. Once that's done, you access the property by using the full name of the type. Here's a simple example:
*/

struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"
    
    var name: String
    var age: Int
}

let fans = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)

// 3. Access control

/*
 Most of the time you don't need to specify access control, but sometimes you'll want to explicitly set a property to be
 private because it stops others from accessing it directly. This is useful because your own methods can work with that
 property, but others can't, thus forcing them to go through your code to perform certain actions.
 */

class TaylorFans {
    private var name: String?
    fileprivate var age: String?
}

// 4. Polymorphism and typecasting

class Album {
    var name: String
    
    init(name: String) {
        self.name = name
    }
    func getPerformance() -> String {
        return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String
    
    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The studio album \(name) sold lots"
    }
}

class LiveAlbum: Album {
    var location: String
    
    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
    override func getPerformance() -> String {
        return "The live album \(name) sold lots"
    }
}

var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studio")
var fearless = StudioAlbum(name: "Fearless", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live From Soho", location: "New-York")

var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]

for album in allAlbums {
    print(album.getPerformance())
    
    if let studioAlbum = album as? StudioAlbum {
        print(studioAlbum.studio)
    }else if let liveAlbum = album as? LiveAlbum {
        print(liveAlbum.location)
    }
}


// 5. Closures


let vw = UIView()
UIView.animate(withDuration: 0.5) {
    vw.alpha = 0
}
