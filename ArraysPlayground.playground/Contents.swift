//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
var goodMorning: String? = "Good morning!"
//goodMorning = nil
//Optional Binding
if let greeting = goodMorning{
    print(greeting)
}

//unsafe
//print(goodMorning!)

//safe
if goodMorning != nil  {
    print(goodMorning!)
}

//Coalesing nil operator
print(goodMorning ?? "df")
*/
/*
var bucketList: [Int]
bucketList = [1,3]


let emptyString = String()
//let emptyArray = Array<Int>()
let secondEmptyArray = [Int]()
let secondArray = Array(repeating: 3, count: 14)


var planets: [String] = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

let thirdRockFromTheSun = planets[2]

let firstRock = planets[0]

let lastPlanet = planets[7]

planets.count

let lastPlanet2 = planets[planets.count - 1]
planets.endIndex

//Properties
planets.count
planets.isEmpty
planets.first //Optional
planets.last //Optional

//Append
planets.append("Planet X")
planets.append("Pluto")

//Remove at an index
planets.remove(at: 2)
//print(planets)

//Remove the last thing
planets.remove(at: planets.count - 1)
//print(planets)
planets.popLast()
//print(planets)

planets.reverse()
//print(planets)

let sortedPlanets = planets.sorted(by: >)

extension Array {
    var middle: Element {
        return self[self.count / 2]
    }
}

//Computer Science Stuff
var myArr = ["hi", "there"]
myArr.count
myArr.capacity
myArr.append("world")
myArr.count
myArr.capacity
myArr.append("!")
myArr.count
myArr.capacity
myArr.append("!!!")
myArr.count
myArr.capacity
myArr.removeLast()
myArr.removeLast()
myArr.removeLast()
myArr.removeLast()
myArr.removeLast()
myArr.count
myArr.capacity

myArr = ["sdf", "other thing"]

//Arrays are a Value Type
var planetas = planets

planets.append("Secret Planet")
//planets = planets + myArr
planets += myArr

let countOfPlanetsAndMyarr = (planets + myArr).count
//print(countOfPlanetsAndMyarr)


var newArr = [1,2,3,4]
let newArr2 = ["things", "in", "text"]
//var combinedArr = newArr + newArr2
//combinedArr.append(["the"])

newArr.removeLast()
newArr.remove(at: newArr.count - 1)
newArr.popLast()
var emptyArr: [Int] = []


var newArr3 = [45,53_423,42_557,23_574]
newArr3.remove(at: 0)
newArr3[0]


planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]

var earth = planets[2]
earth = "whatever"
let gasGiants = Array(planets[4...6])
//print(gasGiants)


planets[2] = "New " + planets[2]
//print(planets)


//Iterating through an Array
//Method One
for element in planets { //where element > "Mars" {
    //print(element)
}
planets[0]
planets[1]
planets[2]
//...
planets[planets.count - 1]

//Method Two
for index in 0..<planets.count { // where index % 2 == 0 {
    //print(planets[index])
}

//While Loop
var i = 0
while i < planets.count {
    print(planets[i])
    i += 1
}

//print out all indicies
var j = 0
while j < planets.count {
    print(j)
    j += 1
}

let firstArr = [1,2,3,4,5]
let secondArr = [1,2,3,4,5]
firstArr == secondArr

let myStr = "This could be anything, really."
let myStrAsArray = Array(myStr.characters)
myStrAsArray[7]

var matrix: [[Int]] = []
matrix.append([1,2,3])
matrix.append([4,5,6])
matrix[1][2]


let myStapleItemsD = ["Cheese", "Milk", "Eggs", "Butter", "Bread"]
var myShoppingListD = ["Crackers", "Chips", "Salsa"]

for itemOne in myShoppingListD {
    for itemTwo in myStapleItemsD {
        myShoppingListD.append(itemTwo)
    }
}
print(myShoppingListD)

let arrayOfNumbers: [Int] = (1...100).map{ _ in Int(arc4random_uniform(200))}
*/

//Exercises
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.



var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

for number in dupeFriendlyList {
    if !noDupeList.contains(number) {
        noDupeList.append(number)
    }
}
//print(noDupeList)

noDupeList = []
//No contains
noDupeList.append(dupeFriendlyList[0])
for number in dupeFriendlyList {
    var noDupeListContainsNumber = false
    for noDupeListNumber in noDupeList {
        if noDupeListNumber == number {
            noDupeListContainsNumber = true
        }
    }
    if !noDupeListContainsNumber {
        noDupeList.append(number)
    }
}
//print(noDupeList)

//Using for loops, rotate matrixToRotate 90 degrees.
let arr = [5,3,-1,6,2]
var arrCopy = arr
//Second smallest
var smallest = Int.max
var smallestIndex = -1

for valIndex in 0..<arrCopy.count {
    let val = arrCopy[valIndex]
    if val < smallest {
        smallest = val
        smallestIndex = valIndex
    }
}
arrCopy.remove(at: smallestIndex)

var secondSmallest = Int.max
for valIndex in 0..<arrCopy.count {
    let val = arrCopy[valIndex]
    if val < secondSmallest {
        secondSmallest = val
    }
}
//print(secondSmallest)

var arrayOfNumbers = [5,3,-1,6,2]

var min = Int.max
var secondMin = Int.max

for a in arrayOfNumbers {
    if a < min {
        secondMin = min
        min = a
    } else if a < secondMin {
        secondMin = a
    }
}
//print(min)
//print(secondMin)

//Max
var maxSoFar = Int.min
for num in arrayOfNumbers {
    if num > maxSoFar {
        maxSoFar = num
    }
}
print(maxSoFar)

var myMatrix = [[10, 14, 12],
                [91, 1, 9],
                [31, 3, 21]]

for arrayOfInts in myMatrix {
    for int in arrayOfInts {
        print(int)
    }
}

for x in 0..<myMatrix.count {
    for y in 0..<myMatrix[x].count {
        print(myMatrix[x][y])
    }
}