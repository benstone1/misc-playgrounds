//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


/*
 Write a function that adds two to a number, then triples it.
 
 Math Functions
 f(x) = 3 * (x + 2)

 f(x) = (x + 2) * 3
 
 Write a function that averages 3 numbers
 
 f(x, y, z) = (x + y + z) / 3
 
 Write a function that, given a number of bits, tells you how many bytes it represents.
 
 b(x) = x / 8
 
 Write a function that, given a number of bits, tells you how many Megabytes it represents.
 
 f(x) =  x / 8 / 1_000_000

 
 
 */
//firstFunction() = print("hello world")

func myFirstFunction() {
    print("Hello world!")
}

//myFirstFunction()
/*
for _ in 0..<9 {
    myFirstFunction()
}
*/
func doubleANumber(number x: Int) -> Int {
    let doubledNumber = 2 * x
    return doubledNumber
}

doubleANumber(number: 4)

//func means function
//doubleANumber is the function's name
//Stuff in parentheses are the parameters
//"number" is the argument label or external parameter name
//"x" is the parameter name
//


//Write a function that adds two to a number, then triples it.

func addTwoThenTriple(number x: Int) -> Int {
    let result = (x + 2) * 3
    return result
}

addTwoThenTriple(number: 0)

//Write a function that averages 3 numbers

func averageOf(_ x: Int, _ y: Int, and z: Int) -> Int {
    let avgOfThreeNumbers = (x + y + z) / 3
    return avgOfThreeNumbers
}

averageOf(1, 2, and: 4)

/*
func averageOf(_ x: Int, _ y: Int, and z: Int) -> Double {
    let avgOfThreeNumbers = Double(x + y + z) / 3
    return avgOfThreeNumbers
}
*/

//Write a function that adds an exclamation mark ("!") to a String


func addBang(to str: String) -> String {
    return str + "!"
}

func addExclamationMark (sentence i: String) -> String {
    let newSentence = i + "!"
    return newSentence
}

func exciteMyString(sentence string: String) -> String {
    let excitement = (string + "!")
    return excitement
}

var initialNumber = 4

let firstTest = 70
let secondTest = 85
let thirdTest = 50
let average = averageOf(firstTest, secondTest, and: thirdTest)

var myString = "Hello there"
var myString2 = myString
myString.append("!")

myString2

addBang(to: myString) //return "Hello there!"

print(myString)

//Changing a global variable (Generally a bad idea)

var myGlobalVal = 4

func changeAGlobal() -> Int {
    myGlobalVal = 10
    return myGlobalVal
}

func changeAGlobal2() -> Int {
    return myGlobalVal
}

changeAGlobal()

print(myGlobalVal)


//Warning: This is bad

var firstNum = 9
var secondNum = 4

var cakes = 54
var pies = 14

func addTwoNumsWRONG(a: Int, b: Int) -> Int {
    return firstNum + secondNum //NEVER DO THIS
}

func addTwoNums(a: Int, b: Int) -> Int {
    return a + b
}
typealias Feet = Int
typealias Void = ()

let myHeight: Feet = 6

let printReturn = print("hewr")

func myFunc() -> Void {
    return ()
}

//x: 6
//y: 3

//return: "6 / 3 = 2"
func divideDescription(dividend: Int, divisor: Int) -> String {
    if divisor != 0 {
        let quotient = dividend / divisor
        let message = "\(dividend) / \(divisor) = \(quotient)"
        return message
    } else {
        return "Can't divide by zero!"
    }
}

divideDescription(dividend: 8, divisor: 0)

func safeDivide(dividend: Int, divisor: Int) -> Int? {
    if divisor != 0 {
        let quotient = dividend / divisor
        return quotient
    } else {
        return nil
    }
}

if let result = safeDivide(dividend: 8, divisor: 0) {
    print("You got \(result)")
} else {
    print("error in division")
}

//Multiple return types

func divideAndDescribe(dividend x: Int, divisor y : Int) -> (value: Int?, message: String) {
    let quotient = safeDivide(dividend: x, divisor: y)
    let message = divideDescription(dividend: x, divisor: y)
    return (quotient, message)
}

divideAndDescribe(dividend: 8, divisor: 2).value

//Default value
//What is a function we have seen with a default parameter?

func excitedPrint(_ str: String, terminator: String = "\n") {
    let excitedString = addBang(to: str)
    print(excitedString, terminator: terminator)
}

excitedPrint("hello", terminator: "4")

func lazyDivide(_ x: Int, by y: Int = 2) -> Int {
    return x / y
}
func squareD(d: Int) {
    print(d * d)
}
squareD(d: 3)
func defaultValues(_ x: Int = 4, _ y: Int = 8, z: Int = 2) -> Int {
    return x + y + z
}
let a = defaultValues(2, z: 1)


func buildADoorA(withMaterial s: String, andHeight x: Int) {
    print("I built a door with \(s) of height \(x) feet!")
}
buildADoorA(withMaterial: "wood", andHeight: 7)

