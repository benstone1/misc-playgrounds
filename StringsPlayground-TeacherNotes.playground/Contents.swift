//: Playground - noun: a place where people can play

import UIKit

/*
for c: Character in "ds".characters {
    print("\(c)")
}
let myChar = "\""

for c: Character in "dsfe".characters {
    print(c)
}
*/
let testString = "This string is for testing only"
let testStringStart = testString.startIndex
let charAtIndexTwo = testString.index(testStringStart, offsetBy: 2)
print(testString[charAtIndexTwo])

let myString = "Hello!"
let myStringEnd = myString.endIndex
let lastCharIndex = myString.index(before: myStringEnd)
let lastChar = myString[lastCharIndex]
print(lastChar)

let start = myString.startIndex
let end = myString.index(start, offsetBy: 2)
let range = start...end
let substring = myString[range]
print(substring)


let iterableString = "sdlkjfhsdf"
let startIndex = iterableString.startIndex
let endIndex = iterableString.endIndex
var currentIndex = startIndex
while currentIndex < endIndex {
    let currentChar = iterableString[currentIndex]
    print(currentChar)
    currentIndex = iterableString.index(currentIndex, offsetBy: 1)
}
print("One", terminator: "ARNOLD")
print("Two", terminator: "ARNOLD")
print("Three", terminator: "ARNOLD")
print()


let a: Int? = 4
let b: Int? = nil

a == b