//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Settings {
    static var numberOfRows = 4
    var currentSettingNum = 6
}

Settings.numberOfRows = 1

Settings().currentSettingNum
let myControl = UISegmentedControl()

myControl.selectedSegmentIndex = 2

func isPalindrome(_ s: String) -> Bool {
    let alphaNumericSet: Set<String> = Set(["1","2","3","4","5","6","7","8","9","0"] + "abcdefghijklmnopqrstuvwxyz".characters.map{String($0)})
    let filteredStrArr = Array(s.filter{alphaNumericSet.contains(String($0).lowercased())}.characters.map{String($0).lowercased()})
    for i in 0..<filteredStrArr.count / 2 {
        print(i)
        if filteredStrArr[i] != filteredStrArr[filteredStrArr.count - 1 - i] {
            return false
        }
    }
    return true
}

isPalindrome("aA")
