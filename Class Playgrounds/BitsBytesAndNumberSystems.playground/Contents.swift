//: Playground - noun: a place where people can play

import UIKit

//Int
//Float
//Double
//String
//Character
//Bool

let a: Float = 34.5
let b: Double = 24.5
let c: Int = 32

var myDecimalNumber = 21
let myBinaryNumber = 0b10101
let myHexNumber = 0x15

myDecimalNumber == myBinaryNumber
String(215, radix: 16)
String(257, radix: 2)

UInt8.max
Int16.max

arc4random_uniform(5)

//Compile time error
arc4random_uniform(UInt32(myDecimalNumber))

var myEightBitInt: Int8 = 38
myEightBitInt = -4
myEightBitInt = Int8.max

//Runtime error
var mySixteenBitInt = Int16(myEightBitInt) + 1


//myEightBitInt += 1



Int8.max
let alwaysPositive: UInt8 = 19
UInt8.min
UInt8.max

let randomNum = arc4random()


Int16.max
Int16.min

Int32.max
Int64.max
Int.max

Int8.min

