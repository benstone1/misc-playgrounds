//: Playground - noun: a place where people can play

import UIKit
/*
/*
var str = "Hello, playground"

//What can we do with text?

//print(str)

"\(str)" //Interpolate

let newString = "one" + "two"

//Compare strings
"apple" < "banana"
"dog" == "dog"
"A" != "a"

let myNum = 5 //Int literal
let someString = "Some string literal value" //String literal
"text can go here"
4
//Int to String
let newerString = String(8)

//Character to String
let myChar: Character = "a"
let myCharAsStr = String(myChar)
myCharAsStr == newString

let zero = Int()

let emptyStr = String() //Empty String (The zero of Strings)
let emptyStr2 = ""

emptyStr == emptyStr2

8.description
423.64.description
(3..<10).description
(4,2,6)

let userAge: String = "15"
let userAgePlusTen = Int(userAge)! + 10
//print("Your age in ten years will be \(userAgePlusTen)")

let favoriteComposer = "J. S. Bach"
var listeningTo = "John Dowland"

//favoriteComposer = "Mozart" compile error

listeningTo = "Miles Davis"
//print(listeningTo)

let newArtist = "Pink" + " Floyd" //Concatenation

//favoriteComposer = favoriteComposer + "!"  Compile error

//listeningTo = listeningTo + ", Trumpeter"
listeningTo += ", Trumpeter"

var name = "Ben"
name.append(" Stone")
name == "Ben Stone" //true

let excitementChar: Character = "!"

name = name + String(excitementChar)
name.append(excitementChar)

var watchingMovie = "Toy Story"
var nextMovie = watchingMovie
nextMovie += " Two"
print("Watching: \(watchingMovie), gonna watch \(nextMovie)")

//String Interpolation

/*
"\(("1!",(3,4),2))"
print("Watching: \(watchingMovie), gonna watch \(nextMovie)")

var numMovies = 2
print("There are \(numMovies) movies in the queue")

let guessNumberOfMoviesInQueue = 4
print("To say there are \(guessNumberOfMoviesInQueue) movies in the queue would be \(numMovies == guessNumberOfMoviesInQueue).")

print(nextMovie)
for letter in nextMovie where letter > "a"  {
    print(letter)
}
*/

//escaping characters using \
print("\n")

//Terminator and Separator
//Terminator says how we end lines.  By default, it's \n
print("hello", terminator: " END LINE")
print("line two")

//Separator says what to do with comma-separated print statements
//Default is " "
print("one", "two", "three", separator: "\n")
*/
let newMovie = "Toy Story Two"

for c in newMovie {
    if c == " " {
        print()
    } else {
        print("\(c)", terminator: "")
    }
}

//String library methods

"jdEkdfEjdieE".capitalized
"jdEkdfEjdieE".lowercased()
"jdEkdfEjdieE".uppercased()

//Contains
newMovie.lowercased().contains("story") && newMovie.lowercased().contains("toy")
let name = "Mr. Stone"
name.hasPrefix("Mr. ")
let otherName = "Dr. House MD"
otherName.hasSuffix("MD")

//Reverse
let alphabet = "abcdefghijklmnopqrstuvwxyz"
let reversedAlphabet = String(alphabet.reversed())

var hangmanStr = "bananas"
hangmanStr.replacingOccurrences(of: "a", with: "_")

hangmanStr.first
hangmanStr.last

String(97, radix:16)

let a = "\u{61}"
let smileyFace = "\u{1F600}"
"\u{30F8}"
"\u{12151}"
"\u{1308}"
"\u{13080}"
"My favorite char is: \u{1218}"

let aAcute = "a\u{0301}"
let aAcuteDirect = "\u{00E1}"

aAcute == aAcuteDirect //Canonically Equivalent

let smileyAcute = "\(smileyFace)\u{0301}\u{0331}"
let char = Character(smileyAcute)
print(char)

let precomposed: String = "\u{D55C}"                  // 한
let decomposed: String = "\u{1112}\u{1161}\u{11AB}"   // ᄒ, ᅡ, ᆫ

let newThing = decomposed + precomposed + smileyFace + smileyAcute + aAcute
for c in newThing {
    print(c)
}
let firstIndex = newThing.startIndex
let thirdIndex = newThing.index(firstIndex, offsetBy: 3)
newThing[thirdIndex]

let fourthIndex = newThing.index(newThing.startIndex, offsetBy: 4)
newThing[fourthIndex]

//Using ranges
newThing[newThing.index(before: newThing.endIndex)]
let substring = newThing[newThing.index(after: newThing.startIndex)...]

let substring2 = newThing[..<thirdIndex]

for c in newThing {
    print(c)
}

let myArr = [1,2,3,4,6]

myArr[3..<myArr.count]
for i in newThing.indices {
    let char = newThing[i]
    if char == target {
        newThing.remove(at: i)
    }
    print(newThing[i])
}

var currentOffset = 0
while currentOffset < newThing.count {
    let newIndex = newThing.index(newThing.startIndex, offsetBy: currentOffset)
    let currentChar = newThing[newIndex]
    currentOffset += 1
}

let helloStr = "Hello there!"
let sixthCharIndex = helloStr.index(helloStr.startIndex, offsetBy: 5)
print(helloStr[sixthCharIndex])

let goodbyeStr = "Goodbye there"
let fourthCharIndex = goodbyeStr.index(goodbyeStr.startIndex, offsetBy: 3)
print(goodbyeStr[fourthCharIndex])
print(goodbyeStr[goodbyeStr.index(goodbyeStr.startIndex, offsetBy: 3)])

let byeStr = "adiós"
let secondToLastCharIndex = byeStr.index(byeStr.startIndex, offsetBy: byeStr.count - 2)
print(byeStr[secondToLastCharIndex])

let secondToLastCharIndexV2 = byeStr.index(byeStr.endIndex, offsetBy: -2)
print(byeStr[secondToLastCharIndexV2])

let emojis = "🏆☕🤷"
emojis.last
emojis[emojis.index(before: emojis.endIndex)]

//for i in "hdsjhfasdf" {
//    if i > "d" {
//        print(i)
//    }
//}
let asdlkfj = "hello"
for i in asdlkfj.indices {
    print(asdlkfj[i])
}
var currentOffset = 0
while currentOffset < asdlkfj.count {
    let currentIndex = asdlkfj.index (asdlkfj.startIndex, offsetBy: currentOffset)
    print(asdlkfj[currentIndex])
    currentOffset += 2
}

var myString = "abc"
for character in myString.characters {
    for _ in 0..<3 {
        if character >= "b" {
            print(character, terminator:"")
        }
    }
}
*/

//Multiple line string literal

"""
Write code that switches on a string. If the string's length is even, print out every character. If the string's length is odd, print out every other character

"""

let myString = "this is my string"

switch myString {
case _ where myString.count % 2 == 0:
    for c in myString {
        print(c)
    }
default:
    for (index, letter) in myString.enumerated() where index % 2 == 0 {
        print(letter)
    }
}
    //for currentOffset in 0..<myString.count where currentOffset % 2 == 0 {
     //   let currentIndex = myString.index(
     //                                     myString.startIndex,
     //                                     offsetBy: currentOffset
     //                                    )
     //   print(myString[currentIndex])
    //}
//}

/*
 Given a string testString create a new variable called condensedString that has any consecutive spaces in testString replaced with a single space.
 
*/
let testString = "     How       about       thes  es  paces  ?         "
var condensedString: String = testString
while condensedString.contains("  ") {
    condensedString = condensedString.replacingOccurrences(of: "  ", with: " ")
}
print(condensedString)

var myString2 = "test"
myString2.remove(at: myString2.startIndex)
print(myString2)

/*
 Initialize a String with a character. Show that it is a Character, and not another String, you're using to initialize it.
 
*/
let char: Character = "a"
let s = String(char)

/*
You are given a string stored in variable problem. Write code so that you print the longest word in the string.
*/
//21
var problem = "find the longest word in the problem description"
var longestWord = (length: 0, str: "")
var currentWord = (length: 0, str: "")
for letter in problem {
    if letter == " " {
        currentWord = (0, "")
        continue
    }
    currentWord.length += 1
    currentWord.str += String(letter)
    if currentWord.length > longestWord.length {
        longestWord = currentWord
    }
}
print(longestWord)
