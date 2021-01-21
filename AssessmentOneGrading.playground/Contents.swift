//: Playground - noun: a place where people can play

import UIKit

//Q1:
//Write a while loop that prints the numbers 1 through 10. There's more than one way to do this. Any working solution is fine.

var i = 1
while i < 11 {
    print(i)
    i += 1
}

//Q2:
//Write a for loop that calculates the sum of all numbers 1 through 10 and prints it.

var sum = 0
for i in 1..<11 {
    sum += 1
}
print(sum)

//Q3:
//Given the string aSentence, below, write code that prints the number of vowels in the string. Vowels include 'a', 'e', 'i', 'o', and 'u', but not 'y'.


let aSentence = "Whatever you are, be a good one."
let vowels = Array("aeiou".characters)
var vowelCount = 0
for c in aSentence.characters {
    if vowels.contains(c) {
        vowelCount += 1
    }
}
print(vowelCount)

//Q4
var grade = 84
var letterGrade: String
switch grade {
case Int.min..<65:
    letterGrade = "F"
case 65..<70:
    letterGrade = "D"
case 70..<80:
    letterGrade = "C"
case 80..<90:
    letterGrade = "B"
case 90..<100:
    letterGrade = "A"
default:
    letterGrade = "A+"
}
print(letterGrade)

//Q5

var anInt: Int?
anInt = 7

if let safeInt = anInt {
    let asdlkfj = safeInt + 10
}


//Q6

let animals = ["zebra","dog", "bat", "octopus"]
var max = (string: "", size: Int.min)
for str in animals {
    if str.characters.count > max.size {
        max = (str, str.characters.count)
    }
}
print(max.string)

//Q7

let array1 = ["Hello", "there,"]
let array2 = ["how", "are", "you"]
let array3 = ["let's", "code", "!"]

let allArrays = array1 + array2 + array3

//Q8
//Given haikuWords write a for loop that will print a single sentence out of it with natural spacing.



let haikuWords = ["The", "snow", "is", "melting", "and", "the", "village", "is", "flooded", "with", "children"]
for word in haikuWords {
    print(word, terminator: " ")
}
