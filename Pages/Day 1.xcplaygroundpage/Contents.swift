//: [Previous](@previous)

import Foundation

// 1. Variables ———————————————————————————————————————————————————————————————————————————————————————————————————————————————
var greeting = "Hello, playground"

greeting = "Bye playground !"

print(greeting)

greeting = "For my brother I'll be there"

print(greeting)

// 2. Strings and integers

var age = 23
var popuation = 8_000_000

// 3 Mutiple String ———————————————————————————————————————————————————————————————————————————————————————————————————————————

var str1 = """
This goes
over multiple
line
"""

// Second is better for multiline syntaxe for don't have backslash in print
var str2 = """
This goes \
over multiple \
line
"""

// 4. Double and Booleans —————————————————————————————————————————————————————————————————————————————————————————————————————
var pi = 3.141 // That's a Double
// You can't mix Double and Int bc of their type.
var awesome = true //Bool

// 5. String interpolation

var score = 33
var finalScore = "Your score is \(score) points"
var result = "The test result are here : \(finalScore.lowercased())"

// 6. Constants ———————————————————————————————————————————————————————————————————————————————————————————————————————————————

let taylor = "Swift" // You can not change the value like variables.

// 7. Type annotation

let hey = "Hello Playground"
let album: String = "Let It Be"
let year: Int = 1964
let height: Double = 1.85
let beatles: Bool = true
var weight: Double = 93.320


