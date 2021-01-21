//: Playground - noun: a place where people can play

import Foundation

var goodMorning: String = "Good morning!"

/*
//Print all characters

//Method one: For in loop
for c in goodMorning where c != " " {
    print(c, terminator: "")
}
print()
//Method two: While loop with indicies
var currentOffset = 0
while currentOffset < goodMorning.count {
    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
    let currentChar = goodMorning[currentIndex]
    print(currentChar, terminator: "")
    currentOffset += 1
}
print()
//Method three: For loop with indicies
for currentOffset in 0..<goodMorning.count {
    let currentIndex = goodMorning.index(goodMorning.startIndex, offsetBy: currentOffset)
    let currentChar = goodMorning[currentIndex]
    print(currentChar, terminator: "")
}
print()


var emptyBool = Bool()
var emptyInt = Int()
var emptyDouble = Double()
var emptyStr = String()

//Initializing Arrays

//Type annotation
var oldSyntaxArr: Array<Int> = Array()
var newSyntaxArr: [Int] = Array()

var oldSyntaxInference = Array<Int>()
var newSyntaxInference = [Int]()
let planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
let planetsTuple = ("Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune")

let repeatedArr = Array(repeating: 4.2, count: 3)
let repeatedArr2 = [Double](repeating: 2.4, count: 4)

let thirdRockFromTheSun = planets[2]

"""
Print the first planet

Print the last planet

Print the second to last planet

Print the middle planet (What are different ways this can be interpreted?)
"""

print(planets[0])
print(planets[planets.count - 1])
print(planets[planets.count - 2])
print(planets[(planets.count / 2)])


//Common library methods
planets.first
planets.last
planets.count
planets.isEmpty
newSyntaxArr.isEmpty

while !newSyntaxArr.isEmpty {
    
}
//append
goodMorning.append("!")
newSyntaxArr.append(1)
newSyntaxArr.append(4)
newSyntaxArr.append(10)

newSyntaxArr.append(9)

//remove
newSyntaxArr.remove(at: 3)
print(newSyntaxArr)

//insert
newSyntaxArr.insert(100, at: 3)

//Reverse
newSyntaxArr = [1,2,3,4]
newSyntaxArr.reverse()
print(newSyntaxArr)

let newReversedArr = Array(newSyntaxArr.reversed())
print(newReversedArr)

var planets = ["Mercury", "Venus", "Earth", "Mars", "Jupiter", "Saturn", "Uranus", "Neptune"]
//planets.append("Pluto") //Bringing Pluto back
//planets.append(43) Error: can't append things that aren't Strings
planets += ["Pluto", "Planet X", "Nibiru"]

planets.remove(at: planets.index(before: planets.endIndex))
planets.popLast()

let earth = planets[2]
let gasGiants = planets[4...6]
//Array slices keep the same indices as before
let gasGiantsArr = Array(gasGiants) //Convert to array to get normal indices
//We can also use open ended ranges here!
let beyondEarthPlanets = planets[3...]
let upToEarthPlanets = planets[..<2]

planets[2] = "New Earth"
planets[2] += "!"
print(planets)

//Iterating through arrays

let myFavoriteStrings = ["this one!",
                         "I like this String",
                         "poetry",
                         "bison and camels"]

//Method one: For in loop
for str in myFavoriteStrings {
    print(str)
}

print()

//Method two: Using indices
for index in 0..<myFavoriteStrings.count {
    let currentStr = myFavoriteStrings[index]
    print(currentStr)
}

let myFavNums = [1,3,2,40,2,3]
//THIS IS WRONG
for value in myFavNums {
    print(myFavNums[value])
}


let arr1 = [1,2,3,4]
var arr2 = [1]
arr2.append(2)
arr2 += [3,4]

arr1 == arr2
let arr3 = ["1","2","3","4"]
//arr3 = ["sdf"]
//arr3[2] = "sdf"
//arr3.remove(at: 2)
//arr3.append("4")
let reversedArr = Array(arr3.reversed())

var arr4 = [2,54,1,452,3,5,2,3,0]
arr4.sorted(by: >)
print(Array(arr4.reversed()))

let myStr = "This could be anything, really."
let myStrAsArr = Array(myStr)

let myStrBackToStr = String(myStrAsArr)

//ComponentsSeperated

myStr.components(separatedBy: " ")
let otherStr = "nameOne, nameTwo, nameThree"
otherStr.components(separatedBy: ", ")

myStr.components(separatedBy: " ").sorted()[0].lowercased()

let myString = "Hello,there!"
myString.components(separatedBy: ",")
//["Hello" "there!"]

let myArr = [31,542,543,2]

myArr[0...1]

let myStapleItemsA = ["Cheese", "Milk", "Eggs", "Butter", "Bread"]
var myShoppingListA = ["Crackers", "Chips", "Salsa"]

let myStapleItemsD = ["Cheese", "Milk", "Eggs", "Butter", "Bread"]
var myShoppingListD = ["Crackers", "Chips", "Salsa"]

for _ in 0..<3 {
    for itemTwo in myStapleItemsD {
        myShoppingListD.append(itemTwo)
    }
}
let d = myShoppingListD.count



var someRepeatsAgain = [25,11,30,31,50,28,4,37,13,20,24,38,28,14,44,33,7,43,39,35,36,42,1,40,7,14,23,46,21,39,11,42,12,38,-41,48,20,23,0,29,24,50,41,38,23,11,30,50,13,13,16,10,8,3,43,10,20,28,39,24,36,21,13,40,25,37,39,31,4,46,20,38,2,7,11,11,41,45,9,49,31,38,23,41,16,49,29,14,6,6,11,5,39,13,17,43,1, -3,1,15,25]


var threeOrMoreTimesArray = [Int]()

for element in someRepeatsAgain {
    var occuranceCount = 0
    for possibleMatch in someRepeatsAgain where element == possibleMatch {
        occuranceCount += 1
    }
    if occuranceCount > 2 {
        if !threeOrMoreTimesArray.contains(element){
            threeOrMoreTimesArray.append(element)
        }
    }
}

print(threeOrMoreTimesArray)

//Find the second smallest number in an Array of Ints

var smallestSoFar = Int.max
var secondSmallestSoFar = Int.max

for num in someRepeatsAgain {
    if num < smallestSoFar {
        secondSmallestSoFar = smallestSoFar
        smallestSoFar = num
    } else if num < secondSmallestSoFar {
        secondSmallestSoFar = num
    }
}

print(secondSmallestSoFar)

let secondSmallest = Array(someRepeatsAgain.sorted())[1]

//Identify if there are 3 integers in the following array that sum to 10. If so, print them. If there are multiple triplets, print all possible triplets.

var tripleSumArr = [-20,-14, -8,-5,-3,-2,1,2,3,4,9,15,20,30]

for iOne in 0..<tripleSumArr.count {
    for iTwo in (iOne + 1)..<tripleSumArr.count  {
        for iThree in (iTwo + 1)..<tripleSumArr.count   {
            if tripleSumArr[iOne] + tripleSumArr[iTwo] + tripleSumArr[iThree] == 10 {
                print(tripleSumArr[iOne], tripleSumArr[iTwo], tripleSumArr[iThree])
            }
        }
    }
}

*/
//Write code such that noDupeList has all the same Ints as dupeFriendlyList, but has no more than one of each Int.

var dupeFriendlyList = [4,2,6,2,2,6,4,9,2,1]
var noDupeList: [Int] = []

for num in dupeFriendlyList {
    var noDupeListContainsNum = false
    for possibleMatch in noDupeList {
        if num == possibleMatch {
            noDupeListContainsNum = true
            break
        }
    }
    if !noDupeListContainsNum {
        noDupeList.append(num)
    }
}


print(noDupeList)



let myArr = [1,5,2,3,194,-32]
"""
print out all the numbers in the array
print out the length of the array
print out the last element in the array
print out the first element in the array
print out the sum of the array
"""

//Control + Command + E
for num in ["dslkfj", "thing two", "other thing"] {
    print(num)
    if num == " " {
        //
    } else {
        num
    }
    
}
//Command + Option + ([ or ]) for shifting lines

//For indentation: Control + i
for num in myArr {
    print(num)
    print(4)
    for num2 in myArr {
        print()
    }
}


