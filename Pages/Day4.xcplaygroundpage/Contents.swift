//: [Previous](@previous)

import Foundation

var greeting = "Hello, playground"


// 1. For loops ———————————————————————————————————————————————————————————————————————————————————————————————————————————————

let finalCountdown = 1...10

for number in finalCountdown {
    print("Number \(number)")
}

let albums = ["Abbey Road", "Get rich or die tryin'", "White Album"]

for album in albums {
    print("\(album) in on Apple Music")
}

print("player gonna ")
for _ in 1...5 {
    print("play")
}
// 2. While loops —————————————————————————————————————————————————————————————————————————————————————————————————————————————

let majority = 18
var ageToday = 9

while majority > ageToday {
    print("You are \(majority - ageToday) to \(majority)")
    ageToday += 1
}
print("You are \(majority) now !")

// 3. Repeat loops ————————————————————————————————————————————————————————————————————————————————————————————————————————————
var number = 1

repeat {
    print(number)
    number += 1
} while number <= 20
print("Ready or not, here I come!")

// 4. Exiting loops ———————————————————————————————————————————————————————————————————————————————————————————————————————————

/* You can exit a loop at any time using the break keyword. To try this out, let’s start with a regular while loop that counts down for a rocket launch:
 */
var countDown = 10

while countDown >= 0 {
    print(countDown)
    if countDown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countDown -= 1
}

// 5. Exiting multiple loop ———————————————————————————————————————————————————————————————————————————————————————————————————

/* If you put a loop inside a loop it’s called a nested loop, and it’s not uncommon to want to break out of both the inner loop and the outer loop at the same time.
   As an example, we could write some code to calculate the times tables from 1 through 10 like this:
 */
outerLoop: for i in 1...10 {
    for j in 1...10 {
        let product = i * j
        print ("\(i) * \(j) is \(product)")
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop
//          With a regular break, only the inner loop would be exited – the outer loop would continue where it left off
        }
    }
}

// 6. Skipping items ——————————————————————————————————————————————————————————————————————————————————————————————————————————

for i in 1...10 {
    if i % 2 == 1 {
        continue
    }
    
    print(i)
}
// 7. Infinite loops ——————————————————————————————————————————————————————————————————————————————————————————————————————————

var counter = 0
while true {
    print("True !")
    counter += 1
    if counter == 200 {
        break
    }
}
// 8. Loop summary ————————————————————————————————————————————————————————————————————————————————————————————————————————————


