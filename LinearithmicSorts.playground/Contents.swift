//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


func quickSort(arr: [Int]) -> [Int] {
    guard arr.count > 1 else {return arr} //base case
    let pivot = arr[arr.count / 2]
    var lessThanPivot = [Int]()
    var equalToPivot = [Int]()
    var greaterThanPivot = [Int]()
    for element in arr {
        if element < pivot {
            lessThanPivot.append(element)
        } else if element > pivot {
            greaterThanPivot.append(element)
        } else {
            equalToPivot.append(element)
        }
    }
    print("\(arr) with pivot: \(pivot)")
    print("sort(\(lessThanPivot)) + \(equalToPivot) + sort(\(greaterThanPivot))")
    print()
    return quickSort(arr: lessThanPivot) + equalToPivot + quickSort(arr: greaterThanPivot) //recurive call
}


let sampleArr = [3,6,1,4,9,2,4,100,3,5,2,1,49,3,2,1,5]


func mergeSort(arr: [Int]) -> [Int] {
    print("running mergesort on \(arr)")
    guard arr.count > 1 else {return arr}
    let midPoint = arr.count / 2
    let left = mergeSort(arr: Array(arr[..<midPoint]))
    let right = mergeSort(arr: Array(arr[midPoint...]))
    return merge(left, and: right)
}

func merge(_ arr1: [Int], and arr2: [Int]) -> [Int] {
    var indexOne = 0
    var indexTwo = 0
    var mergedArr = [Int]()
    while indexOne < arr1.count && indexTwo < arr2.count {
        if arr1[indexOne] < arr2[indexTwo] {
            mergedArr.append(arr1[indexOne])
            indexOne += 1
        } else {
            mergedArr.append(arr2[indexTwo])
            indexTwo += 1
        }
    }
    let finalArr = mergedArr + Array(arr1[indexOne...]) + Array(arr2[indexTwo...])
    print("merging \(arr1) and \(arr2) to make \(finalArr)")
    return finalArr
}

mergeSort(arr: sampleArr)

