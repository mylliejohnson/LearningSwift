import UIKit


/* some quick essentials from www.youtube.com/watch?v=n5X_V81OYnQ , only pulling out the important stuff */

// enums

enum Weekday {
    case monday, tuesday, wednesday, thursday, friday
}

var monday = Weekday.monday
print(monday)

// loops

let platform = ["iOS", "macOS", "tvOS"]

for os in platform {
    print("Swift works on \(os)")
}

for i in 1...12 {
    print("5 x \(i) is \(5 * i)")
}

for i in 1..<12 {
    print("5 x \(i) is \(5 * i)")
}

var lyric = "Haters gonna"

for _ in 1...5{
    lyric += " hate"
}

print(lyric)

var count = 10

while count > 0 {
    print("\(count)...")
    count -= 1
}

print("Go!")

let files = ["me.jpg", "work.txt", "pic.png"]

for file in files {
    if file.hasSuffix(".jpg") == false {
        continue
    }
    print("Found picture: \(file)")
}

// functions

func printTimesTable(number: Int){
    for i in 1...12 {
        print("\(i) x \(number) is \(i * number)")
    }
}

printTimesTable(number: 12)

func rollDice() -> Int {
    return Int.random(in: 1...6)
}

let result = rollDice()
print(result)


// tuples

func getUser() -> (firstName: String, lastName: String){
    (firstName: "Myllie", lastName: "Johnson")
}

let (firstName, _) = getUser()
print("Name: \(firstName)")
