//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func removeVowels(string: String, yIsVowel: Bool) -> String{
    var finalString = ""
    var stringNew = string.lowercased()
    for char in Array(stringNew.characters) {
        if yIsVowel == true {
            if char != "a" && char != "e" && char != "i" && char != "o" && char != "u" && char != "y" {
                finalString += String(char)
            } else if char != "a" && char != "e" && char != "i" && char != "o" && char != "u" {
                finalString += String(char)
            }
        }
    }
    return finalString
}

