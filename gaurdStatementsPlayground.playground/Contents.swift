//: Playground - noun: a place where people can play

import UIKit
import Foundation

var str = "Hello, playground"

//Loops control
//Break + continue

var myInt: Int?
myInt = 9
/*
if let safeInt = myInt {
    print(safeInt + 3)
}

print(myInt! + 3)

print((myInt ?? 0) + 3)

if myInt != nil {
    print(myInt! + 3)
}
*/
//Optional Pyrmaid of Doom
func myFuncPyramid(i: Int?, str: String?, f: Float?, d: Double?) {
    if let safeInt = i {
        if let safeStr = str {
            if let safeF = f {
                if let safeD = d {
                print(safeInt, safeStr, safeF, safeD)
                //Rest of code goes here
                }
            }
        }
    }
}

func firstElement(in arr: [Int]) -> Int? {
    /*
    if !(arr.count > 0) {
        return nil
    }
    */
    guard arr.count > 0 else {
        return nil
    }
    return arr[0]
}

let myArr: [Int] = []
firstElement(in: myArr)

func myFuncGuards(i: Int?, str: String?, f: Float?, d: Double?) {
    guard let safeInt = i else {
        return
    }
    guard let safeStr = str else {
        return
    }
    guard let safeF = f, let safeD = d else {
        return
    }
    print(safeInt, safeStr, safeF, safeD)
}


// global Scope
let i = 2
func iScopeMadness () {
    // function scope
    let i = 3
    do {
        // arbitrary block scope
        let i = 5
        if true {
            // if block scope
            let trueI = 7
            // for scope (generate odds in range)
            for i in 11...13 where i % 2 == 1 {
                print(i)
                trueI
            }
            print(i)
        }
        print(i)
    }
    print(i)
}
//print(i)
//iScopeMadness()
var x = 4
if false {
    print(x)
    var y = 5
    if true {
        print(x)
        var z = 6
    }
}
let myArr2 = [1,45,2,4,3]
var thereIsATwo = false
for num in myArr2 {
    if num == 2 {
        thereIsATwo = true
    }
}


/*
 Bool -> Logic questions
 Int -> Arithmatic
 Double -> Arithmatic
 Float -> Arithmatic
 for in loops -> Iterate through all elements in an object
 while loops -> Iterate through all indices in an object
 if/else -> Iterate through all elements matching a condition
 switch -> Check a variable for a value and run code depending on how it matches a case
 String -> Iterate through all characters in a String
 Character -> Convert Characters to String and manipulate Unicode
 Range -> Check if a number is in a Range. Iterate through a Range
 Optionals -> Unwrap and use an optional value
 Arrays -> Add elements to the beginning and end, access a specific element
 Dictionaries -> Find frequency of an element in an Array
*/

//Bool
//Either true of false

let a: Bool = true
let b: Bool = false
//Logical Operators:
true || false
true && true
!true

//Comparison Operators:
3 == 3
4 != 3
3 > 2
3 >= 3
2 < 3
3 <= 3
//is for types


//Number types
//Use Int for integers, use Double for nonIntegers
Int.max
Int.min
//Division
//Int division
let quotient = 15 / 2

//Floating type division (Double and Float)

let quotiont2 = 15.0 / 2.0

//Modulo

//For some number n

//Mod by 0 -> Runtime error (divide by zero)
//Mod by 1
45 % 1
//Mod by 2
13 % 2
//Mod by something else
//What is the remainder when you divide by it
//Mod by 10

//Mod by n
13 % 13

//Mod by greater than n gives the left value
13 % 29

//Can't use for Doubles
//let mod = 15.0 % 2.0 (COMPILE ERROR)

let expression = (5 + 4 / 6) % 6 > 2 || !(!false)

//Iterate over an Array
for element in myArr2 {
    print(element)
}
//Iterate through a Range
for number in 0..<10 {
    print(number)
}
for offset in 0..<str.characters.count {
    let index = str.index(str.startIndex, offsetBy: offset)
    print(str[index])
}
//Iterate over a Dictionary
for (key, value) in [4: "hi", 5: "cheese", 32934: "boo"] {
    print("The key is \(key) and the value is \(value)")
}
//Iterate over a CharacterView
for c in str.characters {
    print(c)
}

//Iterate through all indices
var offset = 0
while offset < str.characters.count {
    let index = str.index(str.startIndex, offsetBy: offset)
    print(str[index])
    offset += 1
}
var validName: String = ""
var userEnteredValidName = false
/*
while !userEnteredValidName {
    if let input = readLine() {
        if input.characters.count < 3 {
            continue
        } else {
            validName = input
            userEnteredValidName = true
        }
    }
}
Watch for infinite loops!
*/

//Write a function that says if an array contains an element greater than 9
func hasElementBiggerThan9(in arr: [Int]) -> Bool {
    for element in arr where element > 9 {
        return true
    }
    return false
}


//Switch statements

//Need a default case (needs to be exhaustive)

//Pattern matching with _

//Need a statement after each case (break if nothing else)

//Use where to introduce Boolean logic

let myTuple = (1,4)
switch myTuple {
case (_, 2):
    print("The second thing is a two!")
case (5, _):
    print("The first thing is a five!")
case let (first, second) where first + second == 4:
    print("sum is 4")
case let tuple where tuple.0 + tuple.1 == 5:
    print("sum is 5")
case _ where myTuple.0 + myTuple.1 == 6:
    print("sum is 6")
default:
    break
}

var myInt3 = 9
switch myInt3 {
case _ where myInt3 > 4:
    print("bigger than 4")
default:
    break
}

//Common string methods + properties

str.append("\u{0303}")
str.lowercased()
str.uppercased()
str.unicodeScalars
str.characters
print(str)
for c in str.characters {
    print(c)
}
let scalars = str.unicodeScalars
for scalar in scalars {
    print(scalar.value)
}

"a".unicodeScalars.first!.value
"A".unicodeScalars.first!.value


["a","A","z","Z","9","10","!"].sorted()
"ay" > "az"

var finalStr = ""
for c in str.characters {
    finalStr.append(c)
    finalStr += String(c)
    finalStr += "\(c)"
}
myInt3 = 15

let myRange = 0..<15

switch myInt3 {
case myRange:
    print("in between \(myRange.lowerBound) and \(myRange.upperBound)")
case let i where myRange.contains(i):
    print("Same thing")
default:
    print("Not inside the Range")
}

let testRangeArr = [1,2,13,14,5]

func isEachElement(in arr: [Int],
                   in range: CountableRange<Int>) -> Bool {
    for element in arr {
        switch element {
        case range:
            continue
        default:
            return false
        }
    }
    return true
}

isEachElement(in: testRangeArr, in: myRange)

var anInt: Int? = 7

//Nil-coalescing

print(anInt ?? 0)
print(anInt != nil ? anInt! : 0)

var myArr4 = [13,453,2]
//Append
myArr4.append(9)
myArr4 += [3]
//Prepend
myArr4 = [5] + myArr4
//Insert
myArr4.insert(9, at: 2)

let myDict: [Int: [[String]]] = [5: [["afd", "df"],
                                     ["sdfe"],
                                     ["ad","e","fde"]]
                                ]
let n = 1
if let myStringMatrx = myDict[5] {
    let secondArr = myStringMatrx[1]
    let firstStringInSecondArr = secondArr[0]
    let finalIndex = firstStringInSecondArr.index(firstStringInSecondArr.startIndex, offsetBy: n)
    let finalCharInString = firstStringInSecondArr[finalIndex]
    let charAsString = String(finalCharInString)
}

let arr1 = [24,24]
let arr2 = [3,24,2,43,4]
let arr3 = [1,4,2,5]
let combinedArr = arr1 + arr2 + arr3


//Get optionals when you unwrap
//When iterating, you get a (key, value) tuple
//Unordered

var frequencyDict = [Int: Int]()
var frequencyDict2: [Int: Int] = [:]
var freqencyDict3: Dictionary<Int, Int> = [:]
var freqencyDict4: [Int: Int] = Dictionary()
for num in combinedArr {
    if let val = frequencyDict[num] {
        frequencyDict[num] = val + 1
    } else {
        frequencyDict[num] = 1
    }
}
print(frequencyDict)

for num in combinedArr {
    frequencyDict2[num] = (frequencyDict2[num] ?? 0) + 1
}


let aStr  = "00101110"
let binaryA = Int(aStr, radix: 2)!