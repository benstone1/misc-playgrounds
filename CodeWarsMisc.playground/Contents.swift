//: Playground - noun: a place where people can play

import UIKit

let myString = "dsf"


extension String {
    func contains(_ str: String) -> Bool {
        guard self.characters.count >= str.characters.count else {
            return false
        }
        var foundValidSubstring = false
        for possibleStart in 0...(self.characters.count - str.characters.count) {
            for i in 0..<str.characters.count {
                let selfCharIndex = self.index(self.startIndex, offsetBy: possibleStart + i)
                let strCharIndex = str.index(str.startIndex, offsetBy: i)
                if self[selfCharIndex] != str[strCharIndex] {
                    break
                }
                if i == str.characters.count - 1 {
                    foundValidSubstring = true
                }
            }
        }
        return foundValidSubstring
    }
}

func whichAreIn(arr1: [String], arr2: [String]) -> [String] {
    var substringSet = Set<String>()
    for possibleSubstring in arr1 {
        for str in arr2 {
            print(possibleSubstring, str)
            if str.contains(possibleSubstring) {
                substringSet.insert(possibleSubstring)
            }
        }
    }
    return Array(substringSet).sorted()
}



func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    func incrementer() -> Int {
        runningTotal += amount
        return runningTotal
    }
    return incrementer
}

// inc is an instance of the incrementer function


class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "traveling at \(currentSpeed) miles per hour"
    }
    func makeNoise() {
        // do nothing - an arbitrary vehicle doesn't necessarily make a noise
    }
}


func digPow(for number: Int, using power: Int) -> Int {
    var n = Int(String((String(number).characters).reversed()))!
    var sum = 0
    var counter = 0
    while n > 0 {
        let currentDigit = n % 10
        //print(currentDigit)
        sum += Int(pow(Double(currentDigit), Double(power + counter)))
        n /= 10
        counter += 1
    }
    if sum % number != 0 {
        return -1
    } else {
        return sum / number
    }  
}

//digPow(for: 46288, using: 3)






func testFunc() -> (Int) -> Int {
    let sum = 0
    return {
        return sum + $0
    }
}

let a = testFunc()
print(a(4))
print(a(5))





