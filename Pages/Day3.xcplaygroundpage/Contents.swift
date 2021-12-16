//: [Previous](@previous)

import Foundation

/* https://www.hackingwithswift.com/100/3" */

// 1. Arithmetic Operators ————————————————————————————————————————————————————————————————————————————————————————————————————
let firstScore = 13
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let divided = firstScore / secondScore

// 2. Operator overloading ————————————————————————————————————————————————————————————————————————————————————————————————————

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna"
let action = "Fakers" + "Fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]

let beatles = firstHalf + secondHalf
print(beatles)
// 3. Compound assignment operators ———————————————————————————————————————————————————————————————————————————————————————————

var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the"
quote += "Spaniards"

// 4. Comparison operators ————————————————————————————————————————————————————————————————————————————————————————————————————

let firstScore2 = 4
let secondScore2 = 2

firstScore2 == secondScore2
firstScore2 != secondScore2

firstScore2 < secondScore2
firstScore2 >= secondScore2

"Tayler" <= "Swift"

// 5. Conditions ——————————————————————————————————————————————————————————————————————————————————————————————————————————————

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 2{
    print("Ace, lucky")
}else if firstCard + secondCard == 21 {
    print("Black jack !")
}else {
    print("Regular cards")
}

// 6. Combining conditions ————————————————————————————————————————————————————————————————————————————————————————————————————

let age1 = 19
let age2 = 10

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}else {
    print("You have to be over 18 twice for getting on !")
}

if age1 > 18 || age2 > 18 {
    print("One of them are over 18")
}

// 7. The ternary operator ————————————————————————————————————————————————————————————————————————————————————————————————————

print(firstCard == secondCard ? "Cards are the same" : "Cards are differents")

// 8. TheSwitch statements ————————————————————————————————————————————————————————————————————————————————————————————————————

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrella")
case "sunny":
    print("Enjoy your day")
case "storming":
    print("Stay home !")
default:
    print("It's a good day to shining around, take a deep breath !")
    
}
// 9. Range operators —————————————————————————————————————————————————————————————————————————————————————————————————————————


let scoring = 85

switch scoring {
    
case 0..<50:
    print("You failed ! Try again")
case 50..<85:
    print("You did great")
default:
    print("You beat your score !")
}
