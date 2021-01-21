//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
//Make a phonebook

let anna = (name: "Anna", age: 29)
let bob = (name: "Bob", age: 42)
let carla = (name: "Carla", age: 34)

let registry = [anna, bob, carla]

//Find how old carla is

registry[2].1

for person in registry {
    if person.name == "Carla" {
        print(person.age)
    }
}

for person in registry where person.name == "Carla" {
    print(person.age)
}

//Dictionary
//Old Syntax
//let nameDictionary = Dictionary<String, Int>()

//New Syntax
//var nameDictionary = [String: Int]()

//Dictionary Literal
var nameDictionary = ["Carla": 34]
nameDictionary["Anna"] = 29
nameDictionary.updateValue(42, forKey: "Bob")

nameDictionary["Carla"]

var detailedDictionary = ["Carla": (age: 34, phone: 8675309)]
detailedDictionary["Carla"]?.phone

"Anna".hashValue

//let testDictionary: [[Int]: Int] = [ [1,2,3] :5]

//The Keys are unique
//Make a 'new Anna and give her an age of 50
nameDictionary["Anna"] = 50
nameDictionary



var baseballTeamsByCode: [String:String]
var baseballTeamsById = [Int:String]()
baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "MIA":"Marlins"] // 1

baseballTeamsById = [1001:"Mets", 1002:"Yankees", 1003:"Rays", 1004:"Marlins"] // 2

//Useful methods
baseballTeamsById.count
baseballTeamsById.isEmpty

//Why is team a String?
let team = baseballTeamsByCode["MIA"]
//Because we have not added a value for that key

var myArr = ["Team one", "Team two", "Team three"]
myArr[0]
myArr[0] = "New Team one"
//baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "MIA":"Marlins"] // 1

baseballTeamsByCode["TB"]
//Adding value
baseballTeamsByCode["TB"] = "Tampa Bay Devil Rays"
baseballTeamsByCode.updateValue("Rays", forKey: "TB")

//Also, you can check what the old value was
if let oldValue = baseballTeamsByCode.updateValue("Rays", forKey: "TB") {
    print("The old value was \(oldValue)")
    print("Now the new value is \(baseballTeamsByCode["TB"]!)")
}
baseballTeamsByCode["TB"] = "Tampa Bay Devil Rays"


for (index, value) in [1,3,45,5].enumerated() {
    //print(index, value)
}

var baseballTeamsByCode: [String:String]
baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "MIA":"Marlins"]


//Useful methods
baseballTeamsByCode.count
baseballTeamsByCode.isEmpty
Array(baseballTeamsByCode.keys)
Array(baseballTeamsByCode.values)

//Access Value
baseballTeamsByCode["NYN"] //Gives an optional
if let nynTeam = baseballTeamsByCode["NYN"] {
    //print(nynTeam)
}

//Add values
baseballTeamsByCode["TB"] = "Tampa Bay Devil Rays"
baseballTeamsByCode.updateValue("Rays", forKey: "TB")

//Deleting value
baseballTeamsByCode["TB"] = nil
baseballTeamsByCode.removeValue(forKey: "NYA")

//Delete all values
baseballTeamsByCode = [:]
baseballTeamsByCode.removeAll()

baseballTeamsByCode = ["NYN":"Mets", "NYA":"Yankees", "MIA":"Marlins"]
for team in baseballTeamsByCode {
    let k = team.key
    let v = team.value
    print(k, v, separator: ": ")
}
print()
for (k, v) in baseballTeamsByCode {
    print(k, v, separator: ": ")
}
print()
print("KEYS:")
for (k, _) in baseballTeamsByCode {
    print(k)
}
print()
print("VALUES:")

for (_, v) in baseballTeamsByCode {
    print(v)
}
 for k in baseballTeamsByCode.keys {
 print(k)
 }
 for v in baseballTeamsByCode.values {
 print(v)
 }


//The order you enter in keys is not the order you will access them in when iterating
var baseballTeamsByCode = [
    "NYN":"Mets",
     "NYA":"Yankees",
     "MIA":"Marlins",
     "TB": "Rays"
    ]

let teamKeys = Array(baseballTeamsByCode.keys)
let teamValues = Array(baseballTeamsByCode.values)

//Typing dictionaries

let intToStr = [1: "John"]
let intToInt = [0:1]
let intToArr = [0: ["hi", "two"], 10: ["Bye", "three"]]

print(baseballTeamsByCode["Yellow"] ?? "Invalid Team")

let intToBool = [0:false]

//Hashable types (These can be keys)
4.hashValue //And other Int types
"sdjfh".hashValue
let c: Character = "c"
c.hashValue
34.2.hashValue //And floats
false.hashValue


//Not Hashable types (These can't be keys)
(1,4,"dsfljk", 4)
[1,5,3]
[1: "dsf"]
(2..<10)
//Optionals can't be keys


//Sets
let mySet: Set<String> = []
let mySet2 = Set<String>()

mySet.count

let mySet3: Set<Int> = [103456, 103761, 103764, 102778, 103764, 103764, 103764, 103764, 103764, 103764]

let dupeArr = [5,2,2,5,6,8,8,1,8,5,2,9]

let noDupeArr = Array(Set(dupeArr))

let tas = ["Gabe", "Marcel", "Tom", "Gabe", "Karen"]
var uniqueTAs = Set(tas)

uniqueTAs.contains("Gabe")

//Set operations
var s1: Set<Int> = [1,5,2,5,7]
var s2: Set<Int> = [2,1,3,8]

s1.intersection(s2) //Middle of the Venn Diagram
s1.subtracting(s2)
s1.union(s2) //All elements combined



//CharacterSet
let letters = CharacterSet.lowercaseLetters
let userInput: String = "$kdlfjg"
if let scalar = userInput.unicodeScalars.first {
    letters.contains(scalar)
}
var pageDict = ["Goblet of Fire": 636 , "Old Man and the Sea": 104 , "Animal Farm": 112 ]

var shortBooks: [String] = []

for (title, pageNum) in pageDict where pageNum < 200 {
    shortBooks.append(title)
}

print(shortBooks.count)


let set1 = Set([2, 4, 6, 8, 2, 4, 6, 8])
let set2: Set<Int> = [1, 2, 3, 4, 5, 7, 9]
let set3 = set1.intersection(set2)
print(set3)
let set1MinusSet2 = set1.subtracting(set2)
*/
/*
//Compile timer error
let myArr: String = [1,2,3]
var myStr: String?
myStr.characters


//Runtime errors
var i = 2
i -= 1
//let oops = ["a","2","sf"][i]
var myStr: String?
print(myStr!)


var i = 1
while i <= 10 {
    print(i)
    i += 1
}

var sum = 0
for i in 1...10 {
    sum += i
}
print(sum)

let aSentence = "Whatever you are, be a good one."
var count = 0
let vowels: [Character] = ["a","e","i","o","u"]
for c in aSentence where vowels.contains(c) {
    count += 1
}
print(count)

var grade = 78
switch grade {
case 100:
    print("A+")
case 90..<100:
    print("A")
case 80..<90:
    print("B")
case 70..<80:
    print("C")
case 65..<70:
    print("D")
default:
    print("F")
}

var anInt: Int?
anInt = 7

if let safeInt = anInt {
    anInt = safeInt + 10
}

var longest = (str: "", count: 0)
let animals = ["zebran","dog", "bat", "octopus"]
for animal in animals {
    if animal.count > longest.count {
        longest = (animal, animal.count)
    }
}
print(longest.str)


let array1 = ["Hello", "there,"]
let array2 = ["how", "are", "you"]
let array3 = ["let's", "code", "!"]
let allArrays = array1 + array2 + array3
var sentence = ""
for str in allArrays {
    sentence += str
}
sentence

let haikuWords = ["The", "snow", "is", "melting", "and", "the", "village",
                  "is", "flooded", "with", "children"]

for word in haikuWords {
    print(word, terminator: " ")
}

let anotherHaiku = ["Even", "with", "insects", "some", "can",
                    "sing", "some",  "cannot"]
var usedWords = [String]()
for word in anotherHaiku where word.count >= 4 {
    guard !usedWords.contains(word) else {
        break
    }
    print((word.first == "s" ? word.uppercased() : word), terminator: " ")
    usedWords.append(word)
}


//Exercise Solutions

//7
let numbers = [1, 2, 3, 2, 3, 5, 2, 1, 3, 4, 2, 2, 2]
var frequencyDictionary = [Int: Int]()
for number in numbers {
    if frequencyDictionary[number] != nil {
        frequencyDictionary[number] = frequencyDictionary[number]! + 1
        //frequencyDictionary[number]! += 1
    } else {
        frequencyDictionary[number] = 1
    }
}

frequencyDictionary = [Int: Int]()
for number in numbers {
    if let oldValue = frequencyDictionary[number] {
        frequencyDictionary[number] = oldValue + 1
    } else {
        frequencyDictionary[number] = 1
    }
}
frequencyDictionary = [Int: Int]()

for number in numbers {
    frequencyDictionary[number] = (frequencyDictionary[number] ?? 0) + 1
}

print(frequencyDictionary)

var myString: String? = nil
myString ?? "default"
myString != nil ? myString! : "default"

 */

//Print the most common letter in the string below:
var myString = "We're flooding people with information. We need to feed it through a processor. A human must turn information into intelligence or knowledge. We've tended to forget that no computer will ever ask a new question."

var frequencyDictionary = [Character: Int]()
for c in myString.lowercased() where CharacterSet.lowercaseLetters.contains(c.unicodeScalars.first!) {
    frequencyDictionary[c] = (frequencyDictionary[c] ?? 0) + 1
}
var mostFrequent: (character: Character, count: Int)? = nil

for (key, value) in frequencyDictionary {
    guard let currentMostFrequent = mostFrequent else {
        mostFrequent = (key, value)
        continue
    }
    if value > currentMostFrequent.count {
        mostFrequent = (key, value)
    }
}
if let mostFrequent = mostFrequent {
    print(mostFrequent)
}
