//: Playground - noun: a place where people can play

import UIKit
/*

//myFirstFunction()

func doubleANumber(number x: Int) -> Int {
    let doubledNumber = x * 2
    return doubledNumber
}

//Old way of replicating code
let input = 10
let secondInput = 13

//Write code below
let doubledInput = input * 2
print(doubledInput)

let doubledInput2 = secondInput * 2
print(doubledInput2)

//New way
let firstDoubledNum = doubleANumber(number: input)
let secondDoubledNum = doubleANumber(number: secondInput)
*/

/*
 Write a function that adds two to a number, then triples it.
 
 Write a function that averages 3 numbers
 
 Write a function that adds an exclamation mark ("!") to a String
*/


func addTwoThenTriple(number x: Int) -> Int {
    return (x + 2) * 3
}

func averageOf(_ x: Int, _ y: Int, and z: Int) -> Int {
    return (x + y + z) / 3
}

func excite(str: String) -> String {
    return str + "!"
}

excite(str: "Hello")

if averageOf(8, 4, and: 9) > 6 {
    //do stuff
}

//Parameter naming
/*
func functionName(externalName internalName: Int) {
    print(internalName)
}
functionName(externalName: 4)

func unnamedExternalParams(_ x: Int) {
    print(x)
}
unnamedExternalParams(4)

func identicalInternalAndExternalNames(x: Int) {
    print(x)
}
identicalInternalAndExternalNames(x: 4)
*/

var initialNumber = 10

addTwoThenTriple(number: initialNumber)
36

let newNumber = addTwoThenTriple(number: initialNumber)
initialNumber = addTwoThenTriple(number: initialNumber)

var myString = "Hello there"
myString = excite(str: myString)

var someGlobalVariable: Int
someGlobalVariable = 10

func badIdeaToMessWithScope() {
    someGlobalVariable += 5
}
badIdeaToMessWithScope()
badIdeaToMessWithScope()
badIdeaToMessWithScope()
someGlobalVariable


let firstInput = 4
let secondInput = 10

/* //Common error!
func add(_ a: Int, and b: Int) -> Int {
    return firstInput + secondInput
}


func add(_ a: Int, and b: Int) -> Int {
    return a + b
}
add(15, and: 17)

func append(_ c: Character, to str: String) -> String {
    return str + c.description
}

var myStr = "Hi"
myStr = append("!", to: myStr)

typealias Feet = Int
//typealias Void = ()
let myHeight: Feet = 6

func myFirstFunction() -> Void {
     print("Hello world")
}
func myFirstFunction2() -> () {
    print("Hello world")
}
func myFirstFunction3() {
    print("dskfjh")
    return ()
    print("Hello world")
}


//Function signiture (Int, Int) -> Int?
func safeDivide(_ dividend: Int, by divisor: Int) -> Int? {
    if divisor != 0 {
        return dividend / divisor
    }
    return nil
}


safeDivide(8, by: 2)
safeDivide(0, by: 2)
safeDivide(54, by: 0)



//Multiple Returns
func inversedCoordinatesOf(x: Int, y: Int) -> (x: Int, y: Int) {
    return (-x, -y)
}

inversedCoordinatesOf(x: 3, y: 5)



var myString2: String? = "hi"

if let myString2 = myString2 {
    print(myString2)
}

print("a", "b", "c", separator: " ", terminator: "\n")
print("a", "b", "c")

func excitedPrint(str: String, terminator: String = "\n") {
    print(str, terminator: terminator)
}

excitedPrint(str: "Hi")
excitedPrint(str: "Hi", terminator: "ENDLINE")

//Variadic Parameters
func average(of arr: [Int]) -> Int {
    var sum = 0
    for element in arr {
        sum += element
    }
    return sum / arr.count
}

average(of: [4,7,1,8])

//let myArr: [Any] = ["a", 4, 9.3, false]

func average2(of arr: Int...) -> Int {
    var sum = 0
    for element in arr {
        sum += element
    }
    return sum / arr.count
}

average2(of: 4,7,1,8)

func doStuff0(myInt: Int?, myString: String?, myDouble: Double?) {
    if let int = myInt {
        if let str = myString {
            if let double = myDouble {
                print(int, str, double)
                //More code here
            }
        }
    }
}

func doStuff(myInt: Int?, myString: String?, myDouble: Double?) {
    guard let myInt = myInt else {
        return
    }
    guard let myString = myString else {
        return
    }
    guard let myDouble = myDouble else {
        return
    }
    let newVal = Int(myDouble) + myInt
    print("\(myString): \(newVal)")
}

doStuff(myInt: 5, myString: "Answer", myDouble: nil)

func doStuff1(myInt: Int?, myString: String?, myDouble: Double?) {
    guard let myInt = myInt, let myString = myString, let myDouble = myDouble else {
        return
    }
    let newVal = Int(myDouble) + myInt
    print("\(myString): \(newVal)")
}

//Find the max value of an array of Ints

func max(arr: [Int]) -> Int? {
    guard !arr.isEmpty else {
        return nil
    }
    var currentMax = arr[0]
    for value in arr where value > currentMax {
        currentMax = value
    }
    return currentMax
}

max(arr: [])


var max = 10
var min = -45

swap(&max, &min)


func excite2(str: inout String) {
    str.append("!")
}

var testStr = "hi"
excite2(str: &testStr)
testStr


// global Scope
let i = 2
func iScopeMadness() {
    // function scope
    let i = 3
    do {
        // arbitrary block scope
        let i = 5
        if true {
            // if block scope
            let i = 7
            // for scope (generate odds in range)
            for i in 11...13 where i % 2 == 1 {
                print(i)
            }
            print(i)
        }
        print(i)
    }
    print(i)
}
iScopeMadness()
print(i)

var b: Int? = 4


var myValue = 3

func myFunction(x: Int) -> Int {
    var myValue = 4
    myValue += 2
    return myValue
}

print(myFunction(x: 3120))

*/

//Write a function that prints out the most frequently appearing Int in an array of Int.
func mostFrequentInt(in arr: [Int]) -> Int? {
    guard !arr.isEmpty else {
        return nil
    }
    var frequencyDictionary: [Int: Int] = [:]
    for num in arr {
        //frequencyDictionary[num] = (frequencyDictionary[num] ?? 0) + 1
        if let currentVal = frequencyDictionary[num] {
            frequencyDictionary[num] = currentVal + 1
        } else {
            frequencyDictionary[num] = 1
        }
    }
    frequencyDictionary
    var mostFrequent: (key: Int, value: Int) = (0, 0)
    for (key, value) in frequencyDictionary {
        if value > mostFrequent.value {
            mostFrequent = (key, value)
        }
    }
    return mostFrequent.key
}

let sampleInput = [Int]()
mostFrequentInt(in: sampleInput)


/*
 Write a function that finds the person with the second highest test score in a Dictionary that maps names to scores.
 
 
 
 Example
 
 Input ["Person 1": 83, "Person 2": 74, "Person 3": 82]
 
 Output: "Person 3"
 */

func secondGreatestScoreName(in dict: [String: Int]) -> String {
    var highest: (name: String, score: Int) = ("", -1)
    var secondHighest: (name: String, score: Int) = ("", -1)
    
    for (currentName, currentScore) in dict {
        if currentScore > highest.score {
            secondHighest = highest
            highest = (currentName, currentScore)
            
        } else if currentScore > secondHighest.score {
            secondHighest = (currentName, currentScore)
        }
    }
    return secondHighest.name
}



let sampleInput1 = ["Person 1": 83, "Person 2": 74, "Person 3": 82]
secondGreatestScoreName(in: sampleInput1)
