//: Playground - noun: a place where people can play

import UIKit
/*

let numberOfErasers = 4
let additionalErasers = 2.5


let totalErasers = Double(numberOfErasers) + additionalErasers
//print(totalErasers)

var walden = String()
var secondEmptyString = ""
//print(walden + "the")

secondEmptyString += "abc"
//secondEmptyString += "def"
//secondEmptyString = secondEmptyString + "def"
secondEmptyString.append("def")

var a = "NASA"
var b = "ISS"

b = a  //Go make a copy of "NASA" and set b equal to the copy

a = "Eclipse"
/*
print("Did you know that an \(a) happened yesterday?")
print("\"") //Escaping a Character

print("\n")
print("hi")
*/
print("hi", terminator: "\n") //Default is \n

print("Hello", "!", "how", "are", "you", "?", separator: "-") //Default is a whitespace character

print("First", "second", separator: " and then the ", terminator: "\nEnd Program\n")

//Iterating through String

for c in "abc".characters {
    print(c)
}

//U+1F913
"\u{1F60C}"
"\u{1F4a9}"
"\u{1F913}"
"\u{1F951}"
"\u{1F95E}"
"\u{0065}"

let combiningScalars = "\u{0065}\u{0301}"
let eAcuteAccent = "\u{00E9}"

combiningScalars == eAcuteAccent //Canonical Equivalence

for scalar in combiningScalars.unicodeScalars {
    let c = Character(scalar)
    print(c)
}

//We can access Unicode values and print more interesting characters

//Each Unicode scalar has a numeric value (usually in Hex)

//We can combine different Unicode scalars together to make a single character

let myStringd = "H\u{0065}\u{0301}llo"
let myStringLength = myStringd.characters.count


for c in myStringd.characters {
    //print(c)
}

//let secondChar = myString[1] //Doesn't work b/c it doesn't know which scalars will be combined
/*
let myStringStartIndex = myString.startIndex
let firstChar = myString[myStringStartIndex]

let myStringIndexOne = myString.index(myStringStartIndex, offsetBy: 1)
let secondChar = myString[myStringIndexOne]

let myStringEndIndex = myString.endIndex
let lastCharIndex = myString.index(before: myStringEndIndex)
let lastChar = myString[lastCharIndex]
*/
/*
 
 Print the first character in "Fire blasters!"
 
 Print the sixth character in "Hello there!"
 
 Print the fourth character in "Goodbye there"
 
 Print the second to last character in "adiós"
 
 Print the last character in "🏆☕🤷"
 
*/
*/

//let myStringLength = myString.characters.count
//let myStringStartIndex = myString.startIndex
let myString = "Fire blasters!"
let firstChar = myString[myString.startIndex]

let myString2 = "Hello there!"
let myString2AtIndexFive = myString2.index(myString2.startIndex, offsetBy: 5)
let myString2SixthChar = myString2[myString2AtIndexFive]

let myString3 = "adiós"
//let myString3SecondToLastIndex = myString3.index(myString3.endIndex, offsetBy: -2)
let myString3SecondToLastIndex = myString3.index(myString3.startIndex, offsetBy: 3)
let secondToLastCharacter = myString3[myString3SecondToLastIndex]

//Print the last character in "🏆☕🤷"


let start = myString.startIndex
let end = myString.index(start, offsetBy: myString.characters.count / 2)
let range = start...end
let substring = myString[range]
print(substring)

/*
  A B C D E F G H
1
2
3
4
5
6
7
8
*/
let blackSquare = "\u{25A0}"
let whiteSquare = "\u{25A1}"

print("This is row one")
print(String(repeating: "p  ", count: 8))
//Blank squares
for row in 3..<7 {
    for column in 0..<8 {
        if row % 2 == 1 {
            print(column % 2 == 0 ? blackSquare : whiteSquare, terminator: "  ")
        } else {
            print(column % 2 == 0 ? whiteSquare : blackSquare, terminator: "  ")
        }
    }
    print()
}
print(String(repeating: "p  ", count: 8))
print("row 8")


/*
 You are given a string stored in the variable aString. Create new string named replacedString that contains the characters of the original string with all the occurrences of the character "e"replaced by "*".
 
*/

var aString = "Yes, this eee String heehee!"
print(aString.replacingOccurrences(of: "e", with: "*"))

var finalStr = ""
for c in aString.characters {
    if c != "e" {
        finalStr.append(c)
        //finalStr += String(c)
    } else {
        finalStr.append("*")
    }
}

//You are given a string stored in variable problem. Write code so that you print each word of the string on a new line.


print(finalStr)

var problem = "split this string into words and print them on separate lines"

for c in problem.characters {
    if c != " " {
        print(c, terminator: "")
    } else {
        print()
    }
}

problem.components(separatedBy: " ")

struct noProtocolThing {
    let myString: String
    let myInt = 9
    let myBool2 = false
    let myBool = true
    //let myString2: String = "Ds"
    init(str: String) {
        self.myString = str
    }
}
let myStr = "dfsjhds"
let myStrAsArray = Array(myStr.characters)
let a  = (1...100).map{ _ in arc4random_uniform(200)}
print(a)