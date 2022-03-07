// www.hackingwithswift.com/100

import Darwin


// ------ DAY 1 MARCH 3 ------ //

var str = "HELLO, PLAYGROUND"
str = "Goodbye"

var age = 25
var num = 8_000_000

var example = """
this goes
over multiple
lines
"""

var pi = 3.141
var awesome = true

var score = 85
var str2 = "Your score was \(score)"
var results = "The test results are here: \(str2)"

let taylor = "swift" // let variables cannot be changed, use constants as often as possible

let name: String = "Myllie"
let myAge: Int = 25
let girl: Bool = true
let height: Double = 5.2





// ------ DAY 2  3/04 COMPLEX DATA TYPES ------ //

let myllie = "myllie"
let aidan = "aidan"
let parker = "parker"

let people = [myllie, aidan, parker]
people[1]

//sets: items are not in order, all items must be unique
let colors = Set(["red", "green", "blue"])
let colors2 = Set(["red", "green", "blue", "red", "green"])

//tuples: multiple values, can't change
var cousin = (first: "Amaris", last: "Negron")
cousin.0
cousin.last

// arrays vs tuples vs sets
let address = (house: 499, street: "SE 13th Ave", city: "Fort Lauderdale")

let fruits = Set(["mangoes", "bananas", "kiwis"])

let heights = [34, 53, 52, 62, 48, 66, 57]

let favFood = [
    "Myllie Johnson": "tacos",
    "Aidan Monti": "pizza"
]
favFood["Myllie Johnson"]

let favIceCream = [
    "Myllie": "gelato",
    "Aidan": "coffee"
]
favIceCream["Parker"]
favIceCream["Parker", default: "Unknown"]

var course = [String: String]()
course["Math"] = "Algebra"

var finalScore = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

var allScores = Dictionary<String, Int>()
var newResults = Array<Int>()

let results1 = "failure"
let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

enum Activity {
    case bored
    case running (destination: String)
    case coding (topic: String)
    case singing (volume: Int)
    case painting (medium: String)
}

let painting = Activity.painting(medium: "Acrylic")

enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let venus = Planet(rawValue: 2) // without = 1, earth





// ----- DAY 3 03/05 OPERATORS AND CONDITIONS ----- //

let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore

let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf

var scored = 95
scored -= 5

var quote = "The rain in spain falls mainly on the "
quote += "Spaniards"

print(quote)

let scoreOne = 6
let scoreTwo = 4

scoreOne == scoreTwo
scoreOne != secondScore
scoreOne < scoreTwo
scoreOne >= scoreTwo
"Taylor" <= "Swift"

let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else if firstCard + secondCard == 2 {
    print("Aces A lucky!")
} else {
    print("Regular cards")
}

let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("One of them is over 18")
}

let num1 = 11
let num2 = 10
print(num1 == num2 ? "Cards are the same" : "Cards are different")

let weather = "sunny"

switch weather {
case "rain":
    print("Bring an umbrealla")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough // continues excuting code on to the next case
default:
    print("Enjoy your day!")
    
}

let amount = 50

switch amount {
case 0...50: // ... includes 50
    print("You failed badly.")
case 50..<85: // ..< does not include 50, starts at 51
    print("You did OK.")
default:
    print("You did great!")
}




// ----- DAY 4 03/06 LOOPS ----- //

let count = 1...10

for num in count {
    print("Number is \(num)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
    print("\(album) is on Apple Music")
}


print("Players gonna ")
for _ in 1...5{
    print("play")
}

var number = 1

while number <= 10{
    print(number)
    number += 1
}

print("Ready or not, here I come!")

repeat {
    print(number)
    number += 1
} while number <= 20
            
//while false {
//    print("this is false") // false is always false so the print function will never run, "will never be executed"
//}
repeat {
    print("This is false")
} while false


var countdown = 10

while countdown >= 0 {
    print(countdown)
    
    if countdown == 4 {
        print("I'm bored. Let's go now!")
        break
    }
    countdown -= 1
}

print ("Blast off!!")

outerLoop: for i in 1...10 {
    for j in 1...10  {
        let product = i * j
        print("\(i) * \(j) = \(product)")
        
        if product == 50 {
            print("It's a bullseye!")
            break outerLoop // exits the multiple loops at the same time
        }
    }
}

for i in 1...20 {
    if i % 2 == 1 {
        continue
    }
    
    print (i)
}

var counter = 0

while true {
    print (" ")
    counter += 1
    
    if counter == 273 {
        break
    }
}
