//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Unique includes palindrome matches
func getAllUniqueStr(from arr: [String]) -> Int {
    var set = Set<String>()
    var uniqueCount = 0
    for str in arr {
        if !set.contains(str) && !set.contains(String(str.reversed())) {
            uniqueCount += 1
        }
        set.insert(str)
    }
    return uniqueCount
}

getAllUniqueStr(from: ["bacd", "cba", "abc", "bac"])



