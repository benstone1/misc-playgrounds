//: Playground - noun: a place where people can play

import UIKit

//New type: Dictionary

//How do we relate information to other pieces of information?

//So far:

let joe = (name: "Joe", age: 15)
let kira = (name: "Kira", age: 24)
let sam = (name: "Sam", age: 21)

let people = [joe, kira, sam]

//Find sam's age
for person in people where person.0 == "sam" {
    print(person.age)
}
//Not very efficient!  We have to look at every person to see if it's sam.  We want a better solution.

let peopleDictionary: [String: Int] = ["Joe": 15, "Kira": 24, "Sam": 21]
//Finding sam's age is super easy now!
peopleDictionary["Sam"]



//Key Set operations
var s1: Set<Int> = [1,2,4,5]
var s2: Set<Int> = [4,3,6,1]

s1.union(s2)
s1.intersection(s2)
s1.subtract(s2)
s1.contains(4)

//CharacterSets
let myChars = CharacterSet.lowercaseLetters.intersection(CharacterSet.alphanumerics)


 let anotherHaiku = ["Even", "with", "insects", "some", "can",
 "sing", "some",  "cannot"]
/*
 Use a for loop to print the words in anotherHaiku with the following requirements:
 
 Print only if the word is 4 characters or longer
 If the word begins with s, uppercase it
 Otherwise print it as is
 Stop printing before you repeat any word
*/

var usedWords = [String]()
for word in anotherHaiku where word.count > 3 {
    guard !usedWords.contains(word) else { break }
    print(word.first != "s" ? word : word.uppercased(), terminator: " ")
    usedWords.append(word)
}
var five = 5
var dict = [Int:Int]()
if dict[five] != nil {
    dict[five] = dict[five]! + 1
} else {
    dict[five] =
}
