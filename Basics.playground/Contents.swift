import Cocoa

// comment
/*
 multi-line comment
 */


/* VARIABLES

var str = "Hello World"
let str2 = "I am a constant. I cannot change."
print(str)

var age: Int = 25 // : defines data type instead of the system guessing
*/

/* string interpolation

var num = 4
print("I have \(num) apples.")

print("Min Int \(Int64.min)")
print("Max Int \(Int64.max)")

var pi2 = 3.1415 // floatng number, value with decimal

var pi3:Double = 3.1415
print("Min Double \(Double.leastNormalMagnitude)")
print("Max Double \(Double.greatestFiniteMagnitude)")

var bigF = 1.11111111
var bigF2 = 1.11111111
print("Big Float: \(bigF + bigF2)")
*/

// booleans

let canVote: Bool = true

var myGrade: Character = "M"

print("Dbl to Int: \(Int(3.4))")
print("Int to Dbl: \(Double(3))")

// MATH
//print("5 + 4 = \(5 + 4)")
//print("5 - 4 = \(5 - 4)")
//print("5 * 4 = \(5 * 4)")
//print("5 / 4 = \(5 / 4)")
//print("5 / 4 = \(5.0 / 4.0)")
//print("5 % 4 = \(5 % 4)")

var numb: Int = 1
numb += 1

var random = Int.random(in: 1...11)
print("Random number: \(random)")

//print("abs(-5) = \(abs(-5))")
//print("floor(5.56) = \(floor(5.56))")
//print("ceil(5.56) = \(ceil(5.56))")
//print("round(5.56) = \(round(5.56))")
//print("max(5, 6) = \(max(5, 6))")
//print("min(5, 6) = \(min(5, 6))")
//print("pow(2, 6) = \(pow(2, 6))")
//print("sqrt(25) = \(sqrt(25))")
//print("log(2.34346) = \(log(2.34346))")

// CONDITIONALS

var age2: Int = 4

if age2 < 5 {
    print("go to preschool")
} else if age2 == 5 {
    print("got to kindergarten")
} else if (age2 > 5) && (age2 <= 18) {
    let grade: Int = age2 - 5
    print("Go to grade \(grade)")
} else {
    print("go to college")
}

var income: Double = 12000.0
var gpa: Double = 3.7
print(gpa)
print("Get Grant: \(income < 15000) || (gpa >= 3.8)")

print("Not true: \(!true)")


// ternary operator

var age3: Int = 15
var canDrive: Bool = age3 > 15 ? true : false
print("\(canDrive)")


// switch statement

let ingredient = "pasta"

switch ingredient{
case "tomatoes", "pasta":
    print("spaghetti")
case "beans":
    print ("burrito")
case "potatoes":
    print("mashed potatoes")
default:
    print("Drink water")
}

let testScore: Int = 89

switch testScore{
case 93...100:
    print("A")
case 85...92:
    print("B")
case 77...84:
    print("C")
case 60...76:
    print("D")
default:
    print("F")
}

// Loops && arrays

var a4 = [1, 2, 3, 4]

for item in a4 {
    print(item)
}

for i in 1...15 {
    print(i)
}

for i in 1...10 where i % 2 == 0 {
    print("Even: \(i)")
}

// stride

for i in stride(from: 10, to: 2, by: -2){
    print(i)
}

a4.forEach{ print ($0)}
