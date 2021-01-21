//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Write a function that sums all the values at the even indices of an array of Ints.

//
func sumOfEvenIndices(arr: [Int]) -> Int {
    var sum = 0
    for i in 0..<arr.count where i % 2 == 0 {
        sum += arr[i]
    }
    return sum
}

sumOfEvenIndices(arr: [3,4,1,5,2,7,9])

//Write a function that prints out the most frequently appearing Int in an array of Int.

func mostFrequentInt(in arr: [Int]) -> Int {
    var frequencyDict: [Int: Int] = [:]
    for element in arr {
        if frequencyDict[element] != nil {
            frequencyDict[element] = frequencyDict[element]! + 1
        } else {
            frequencyDict[element] = 1
        }
    }
    var max: (element: Int, frequency: Int) = (-1, -1)
    for (key, value) in frequencyDict {
        if value > max.frequency {
            max = (key, value)
        }
    }
    return max.element
}

let arr = [1,0,1,2,3,3,2,3,3,2,0,0,0]
mostFrequentInt(in: arr)
