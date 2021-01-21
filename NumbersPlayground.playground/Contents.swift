//: Playground - noun: a place where people can play

import UIKit
/*
var numberOfPizzasToOrder = 8

var str = "Hello, playground"


//Natural Numbers
//Non-negative integers

//Integer
//No decimal point, no fractions (whole number)
//Positive or negative
//Goes from -infinite to +infinite

//Rational numbers
//Can be made into a fraction
//Can be positive or negative
//3.5 (9/2)  15/4

//Real
//Include all of the above + numbers that can't be made into a fraction (Irrational numbers)

Int.max

let my8BitInt: Int8 = 35
Int8.max
Int8.min
let my8BitUInt: UInt8 = 25
UInt8.max
UInt8.min

//Addition
let bitsInByte = 8
let bitsInNibble = 4.0
let byteAndNibble = Double(bitsInByte) + bitsInNibble

//Subtraction
let bitsInByte1 = 8
let bitsInNibble1 = 4.0
let byteAndNibble1 = Double(bitsInByte) - bitsInNibble

//Multiplication
8 * 10.0

//Division
let numberOfPeople = 9
let numberOfTAs = 2

let peoplePerTA = numberOfPeople / numberOfTAs

let gradeOne = 84
let gradeTwo = 83

//Modulo

//Mod by 2 for even/odd
//Mod by 10 for ones place digit
//Mod by n == 0 means number is divisible by n

let firstNum: Int = 8
let secondNum: Int = 3

//print(" \(firstNum)/\(secondNum) is \(firstNum/secondNum) and \(firstNum)%\(secondNum) is \(firstNum%secondNum) "  )
//prints 8 / 3 is 2 and 8 % 3 is 2



numberOfPizzasToOrder = numberOfPizzasToOrder + 2
numberOfPizzasToOrder += 1 //Increment
numberOfPizzasToOrder -= 1 //Decrement
var numberOfLives = 5
numberOfLives -= 1
numberOfPizzasToOrder *= 2
numberOfPizzasToOrder /= 2
numberOfPizzasToOrder %= 3

let a = 9
//a = 10 Gives compiler error

var bigInt8 = Int8.max
bigInt8 &+ 1 //Runtime error

let d1 = 1.1
let d2 = 1.1

if d1 == d2 {
    print("d1 and d2 are equal")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 != 1.2 {
    print(d1)
    print("\(d1 + 0.1)")
}

let d3 = d1 + 0.1
let numSeven = 4.0 + 1.2
let numEight = 5.0 + 0.2
let d = numSeven == numEight

let myNum = 0.2

let binLit = 0b0110
let hexLit = 0x2a
*/
let p1 = "I love you"
let p2 = "a little"
let p3 = "a lot"
let p4 = "passionately"
let p5 = "madly"
let p6 = "not at all"

var numberOfPetals = 4

if numberOfPetals > 6 {
    numberOfPetals -= 1
    numberOfPetals = (numberOfPetals % 6) + 1
}
/*
You are given a variable number of type Double. Create a new variable called roundedNumber that has at most 1digit after the decimal dot.

Input:

*/
var number = 545.5317

number *= 10
var intNumber = Int(number)
let roundedNumber = Double(intNumber) / 10
