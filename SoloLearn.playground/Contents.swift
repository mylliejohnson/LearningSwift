import UIKit

// 17.1 Lesson Set Operations

/*
 intersection - creates new set with only common values
 symmetricDifference - creates new set with values in either set, not both
 union - new set with all values
 subtracting - new set with values not in soecified set
 */

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]

print("Union: \(oddDigits.union(evenDigits))")
print("Intersection: \(oddDigits.intersection(evenDigits))")
print("symmetricDifference: \(oddDigits.symmetricDifference(evenDigits))")
print("subtracting: \(oddDigits.subtracting(evenDigits))")

/*
 "is equal" operator (==): Determines whether two sets contain all of the same values.
 isSubset(of: ) method: Determines whether all of the values of a set are contained in the specified set.
 isSuperset(of: ) method: Determines whether a set contains all of the values in a specified set.
 isStrictSubset(of: ) or sStrictSuperset(of: ) method: Determines whether a set is a subset or superset of, but not equal to, a specified set.
 isDisjoint(with: ) method: determines whether two sets have any values in common.
 */

let a: Set = [1, 2, 3]
let b: Set = [3, 5, 2]

if !a.isSubset(of: b){
    let c: Set = a.intersection(b)
    print(c)
}

//  18.1 DICTIONARIES //
/* identifier,
    
 Dictionary<Key, Value>
 [Key: Value]
 */

var heights = [Int: String]() // keys are type Int and values are type String

var airports: [String: String] = ["TOR": "Toronto", "FL": "Florida"]

// OR

var airportsArr = ["TOR": "Toronto", "FL": "Florida"]

airports["MIA"] = "Miami"

let oldValue = airports.updateValue("Atlanta", forKey: "ATL")

let airportName = airports["FL"]
print(airportName)


if let removedValue = airports.removeValue(forKey: "MIA") {
   print("The removed airport's name is \(removedValue).")
} else {
   print("The airports dictionary does not contain a value for MIA.")
}

for(apCode, apName) in airports {
    print("\(apCode): \(apName)")
}

for apCode in airports.keys {
    print("Aiport Code: \(apCode)")
}

for apName in airports.values {
    print("Aiport Name: \(apName)")
}

// MODULE 2 QUIZ //

for x in 1...7 {
    print("\(x) in a loop")
}

var result = 0
for i in 0...4 {
    if i == 3{
        result += 10
    } else {
        result += i
    }
}
print(result)

// FUCTIONS //

// -> indicates the function's return type
func sayHello(personName: String) -> String {
    let greeting = "Hello, " + personName + "!"
    return greeting
}

print(sayHello(personName: "Myllie"))


func sq(num: Int) -> Int {
    return num*num
}
print(sq(num: 2))


func rangeLength(start: Int, end: Int) -> Int {
    return end - start
}

print(rangeLength(start: 2, end: 7))

func minMax(array: [Int]) -> (min: Int, max: Int) {
   var currMin = array[0]
   var currMax = array[0]
   for value in array[1..<array.count] {
      if value < currMin {
        currMin = value
      } else if value > currMax {
         currMax = value
      }
   }
  return (currMin, currMax)
}
print(minMax(array: [1, 2, 3, 4, -6, 11]))

//
let bounds = minMax(array: [4, -4, 1, 88, 7, 42, -11])
print("min is \(bounds.min) and max is \(bounds.max)")


 //
func test (n1: Int, n2: Int) -> (a: Int, b: Int){
    return ((n1-n2), (n1 + n2))
}
let tmp = test (n1: 8, n2: 3)
print(tmp.b)
