//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"

let myBool = false

//Number Types
//By Inference
let myInt = 8
let myDouble = 4.0

//By Annotation
let myFloat: Float = 4.5
let myUInt: UInt = 4
let myInt8: Int8 = 8

//Text Types
let myStr = "hello there"
let myChar: Character? = "a"

let myCountableRange = 0..<19
let myCountableClosedRange = 0...19

("abc")..<("def")

let myTuple = (count: 1,
               elephants: 2,
               text: "adf",
               randNum: arc4random_uniform(5))

//print all elements in myTuple
print(myTuple.0)
print(myTuple.elephants)
print(myTuple.2)
print(myTuple.3)

switch myTuple {
case (0..<3, 2, _, _):
    print("Good thing we have two elephants!")
default:
    break
}


let myArr = ["1,2,3,4", "a", "adasdfsdlkfj", "a"]
let myStrForArr = "count"

var shortestStr = myArr[0]
for str in myArr {
    if str.count < shortestStr.count {
        shortestStr = str
    }
}

let myArr4 = [21.340, 43.90, 4.0]
for index in 0..<myArr4.count {
    print(index)
}


let myStr = "this is a test sent!"

var str = "then!"
let indexToReplace = str.index(str.startIndex, offsetBy: 2)
//str.replacingOccurrences(of: "e", with: "a")
str.replacingCharacters(in: ...indexToReplace, with: "a sdfklj")

myStr[myStr.startIndex]
myStr[myStr.index(before: myStr.endIndex)]

let index = myStr.index(myStr.startIndex, offsetBy: 6)
myStr[index]

var myStrAsArr = Array(myStr)
myStrAsArr.remove(at: 2)
let finalStr = String(myStrAsArr)

let myInt = 0b110101
let binStr = String(myInt, radix: 16)

let myInt2 = "110101"
var sum = 0.0
for (power, currentChar) in myInt2.reversed().enumerated() {
    sum += (Double(String(currentChar))! * pow(2.0, Double(power)))
}

let myIntAsBin = Int(myInt2, radix: 2)

let myStr = "this is also a string"
let myArr = myStr.components(separatedBy: " ")
myArr.joined(separator: " ")

var newStr = ""
for str in myArr {
    newStr += str
    
}

var count = 0
while true {
    guard count < 10 else {
        break
    }
    count += 1
    print(count)
}
*/
let myOptionalInt: Int? = 8
let myOptionalDouble: Double? = 3.9
let myOptionalStr: String? = "hi"

for i in 0..<4 {
    guard let i = myOptionalInt else {
        break
    }
    guard let d = myOptionalDouble else {
        break
    }
    guard let s = myOptionalStr else {
        break
    }
    print(Double(i) + d, s)
}


//1 1 2 3 5 8 13 21

var numOne = 1
var numTwo = 1
var currentSum = numOne + numTwo
print(numOne)
print(numTwo)
for _ in 0..<10 {
    print(currentSum)
    numOne = numTwo
    numTwo = currentSum
    currentSum = numOne + numTwo
}

var matrix: [[Character]] =
             [["1","2","3"],
              ["5","6","2"],
              ["6","9","6"]]

matrix[0][1] = "0"

var noDupeArr = [Character]()
for row in matrix {
    for c in row {
        var numIsUnique = true
        for possibleMatch in noDupeArr {
            if c == possibleMatch {
                numIsUnique = false
            }
        }
        if numIsUnique {
            noDupeArr.append(c)
        }
    }
}

let a = 5
if (false || !(!false)){
    switch a {
    case 0...5:
        print("A")
    default:
        print("B")
    }
} else {
    switch a{
    case 0...5:
        print("C")
    default:
        print("D")
    }
}


