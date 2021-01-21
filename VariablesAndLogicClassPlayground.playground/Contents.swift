//: Playground - noun: a place where people can play

import UIKit

var myFirstVariable = 7  //Type Inference
myFirstVariable = 7
//myFirstVariable is Int

//String
var myStr = "string!"

//Is it a string ?

var strTestOne = "" //Empty String
var strOrCharacter = "d"
//Character(strOrCharacter)

//Character
var myCharacter: Character = "d"
var myEmoji: Character = "😊"

let isMyCharacterAStinrg = myCharacter is String

//Int
var myInt: String
var myInt2 = -25
var myInt3 = 0

//Double
var myDouble = 0.6
var myDouble2: Double

//Float
var myFloat: Float = 0.6

//Bool
var trueBool = true
var falseBool = false
var isMyCharacterAString: Bool //Declaration
//isMyCharacterAString = false //Assignment

let pi: Double
pi = 3.1415926535897932384
var r: Double = 10
var circleCircumference = 2.0 * pi * r

//Constants
let speedOfLight = 299_792_458 //Speed of light
let creatorName = "Ben"
let minutesInHour = 60 //Good because it avoids 'magic numbers'
let distanceFromTripBullsEyeToDoubleBullsEye = 0.1125
let testingURL = "www.mydomain.com/APITest"

//Making Strings
var myStr1 = "whatever we want"
var myIntToStr = 90.description
//String interpolation
var interpolationPractice = "The speed of light is \(speedOfLight) meters per second"
//print(interpolationPractice)

//is
myStr1 is Int

let numberOfPeople = 40
let numberOfChairs = 38


//Comparison
numberOfChairs > numberOfPeople //Greater than
numberOfPeople < numberOfChairs

numberOfChairs >= numberOfPeople // Greater than or equal to
numberOfChairs < numberOfPeople //Less than
numberOfChairs <= numberOfPeople //Less than or equal to
numberOfChairs == numberOfPeople
numberOfChairs != numberOfPeople

//Five true statements
let ten = 10
ten != ten

let cookies = 4
let brownies = 3
let cake = 10
let pie = -2
cookies < brownies

4674 - 233 == 363

!(2 * 5 == 20 / 2)

var weight = 155

let targetWeight = 175

weight == targetWeight



//FIve false statements



//Logical Operators
//Not (!)
!true //false
!false //true

//And (&&)
true && true
true && false

//Or (||)
let boolZero = true || false
let boolOne = true || true
let boolTwo = boolOne || boolZero
let boolThree = !boolTwo
3 != 3


/* Type names
 
String
Bool
Int
Double
Float
Character

Variables and Constants
Logical Operators
*/



let tru = "hello world" == "Hello World"
let fal = 7.0 / 2.0 == 3.5

true && fal
tru && false
fal && true && !tru
(fal && true && tru) || tru


var a = 4
var b = 9

let temp = a

a = b
b = temp