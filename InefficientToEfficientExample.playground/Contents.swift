//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func uniqueQuadraticTime(inputArr: [Int]) -> Array<Int> {
    var returnArr = [Int]()
    for (firstNumIndex, firstNum) in inputArr.enumerated() {
        var numberIsUnique = true
        for (secondNumIndex, secondNum) in inputArr.enumerated() where firstNumIndex != secondNumIndex {
            if firstNum == secondNum {
                numberIsUnique = false
            }
        }
        if numberIsUnique {
            returnArr.append(firstNum)
        }
    }
    return returnArr
}

uniqueQuadraticTime(inputArr: [3,3,5,3,4,2,3,6,2,7,3,2,7])

func uniqueLinearTime(inputArr: Array<Int>) -> Array<Int> {
    var frequencyDictionary = [Int: Int]()
    for num in inputArr {
        frequencyDictionary[num] = (frequencyDictionary[num] ?? 0) + 1
    }
    return frequencyDictionary.keys.filter{frequencyDictionary[$0]! == 1}
}

uniqueLinearTime(inputArr: [3,3,5,3,4,2,3,6,2,7,3,2,7])
