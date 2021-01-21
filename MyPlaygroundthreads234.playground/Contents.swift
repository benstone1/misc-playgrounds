//: Playground - noun: a place where people can play

import UIKit

//var myTup = (a: 8, b: 10)
//
//
//func mostFrequentlyOccurringChar(in str: String) -> Character? {
//    guard str.count > 0 else { return nil }
//    let str = str.lowercased().filter{$0 != " "}
//    var frequencyDict = [Character: Int]()
//    for c in str {
//        frequencyDict[c] = frequencyDict[c, default: 0] + 1
//    }
//    var max = (char: "", occurrences: 0)
//    for (char, count) in frequencyDict {
//        if count > max.occurrences {
//            max = (String(char), count)
//        }
//    }
//    return Character(max.char)
//}

func allPermutations(in arr: [Int]) -> [[Int]] {
    guard arr.count > 1 else { return [arr] }
    guard arr.count > 2 else { return [arr, [arr[1], arr[0]]]}
    var permuations = [[Int]]()
    for (i, n) in arr.enumerated() {
        let arrWithoutN = Array(arr[0..<i]) + Array(arr[(i+1)...])
        let permsWithoutN = allPermutations(in: arrWithoutN)
        permsWithoutN.map{[n] + $0}
        permuations.append(permsWithoutN)
    }
    return permutations
}


let oneEl = [1]
let twoEl = [1,2]
let threeEl = [1,2,3]

allPermutations(in: oneEl)
