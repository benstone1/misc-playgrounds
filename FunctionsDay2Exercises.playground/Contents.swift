//: Playground - noun: a place where people can play

import UIKit

//Write a function that returns the number of unique Ints in an array of Ints.

func countUniqueInts(in arr: [Int]) -> Int {
    var frequencyDict = [Int: Int]()
    for num in arr {
        //frequencyDict[num] = (frequencyDict[num] ?? 0) + 1
        if let val = frequencyDict[num] {
            frequencyDict[num] = val + 1
        } else {
            frequencyDict[num] = 1
        }
    }
    var uniqueCount = 0
    for (_, value) in frequencyDict where value == 1 {
        uniqueCount += 1
    }
    return uniqueCount
}


//Write a function called unwrap that takes an array of optional ints and returns an array with them unwrapped with any nil values removed.

func unwrap(arr: [Int?]) -> [Int] {
    var returnArr = [Int]()
    for num in arr where num != nil {
        /*
        if let unwrappedNum = num {
            returnArr.append(unwrappedNum)
        }
        */
        returnArr.append(num!)
    }
    return returnArr
}

unwrap(arr: [nil, 7, 4, nil, 43, 11, nil, 2])

//[7, 4, 43, 11, 2]


//Write a function that takes an array of bools and returns a dictionary that maps the bools to how many times they appear in the array.

func boolFrequencyDict(arr: [Bool]) -> [Bool: Int] {
    var frequencyDict = [Bool: Int]()
    for booleanVal in arr {
        //frequencyDict[num] = (frequencyDict[num] ?? 0) + 1
        if let val = frequencyDict[booleanVal] {
            frequencyDict[booleanVal] = val + 1
        } else {
            frequencyDict[booleanVal] = 1
        }
    }
    return frequencyDict
}

boolFrequencyDict(arr: [true, false, false, false, true])

//Write a function that converts a binary number into decimal. The binary number will be given as an array of Ints.


func convertToBin(arr: [Int]) -> Int {
    var binaryStr = ""
    for val in arr {
        binaryStr += String(val)
    }
    return Int(binaryStr, radix: 2)!
}

convertToBin(arr: [1,0,1,1,0,1])


//Write a function that takes this dictionary of baseball teams by ID and returns an array of tuples that contain each team's ID and name.

let baseballTeamsById = [1001:"Mets",
                         1002:"Yankees",
                         1003:"Rays", 1004:"Marlins"]

func dictToTuples(dict: [Int: String]) -> [(Int, String)] {
    var tupleArr = [(Int, String)]()
    for tuple in dict {
        tupleArr.append(tuple)
    }
    return tupleArr
}



func digit(n: Int, of num: Int) -> Int {
    var num = num
    for _ in 0..<n {
        num = num / 10
    }
    return num % 10
}
