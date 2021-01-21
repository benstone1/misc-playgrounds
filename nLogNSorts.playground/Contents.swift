//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func bubbleSort(arr: [Int]) -> [Int] {
    var arr = arr
    var madeSwapInLastPass = false
    repeat {
        madeSwapInLastPass = false
        for index in 0..<arr.count - 1 {
            if arr[index] > arr[index + 1] {
                let temp = arr[index]
                arr[index] = arr[index + 1]
                arr[index + 1] = temp
                madeSwapInLastPass = true
            }
        }
    } while madeSwapInLastPass
    return arr
}


func mergeSort(arr: [Int]) -> [Int] {
    print("Running merge sort on \(arr)")
    guard arr.count > 1 else { return arr } //base case
    let midPoint = arr.count / 2
    //recursive calls
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
    let finalResult = mergedArr + Array(arr1[indexOne...]) + Array(arr2[indexTwo...])
    print("Merging \(arr1) and \(arr2) into \(finalResult)")
    print()
    return finalResult
}
let sampleArr = [3,1,8,2,10,4,6,5]
func getRandomInt() -> Int {
    return Int(arc4random_uniform(500))
}
var bigArr = [Int]()
for _ in 0...0 {
    bigArr.append(getRandomInt())
}

var sortedArr = Array((0...1_000).reversed())

func quickSort(arr: [Int]) -> [Int] {
    print("\(arr)")
    guard arr.count > 1 else { return arr } //base case
    let pivot = arr[0]
    var elementsLessThanPivot = [Int]()
    var elementsEqualToPivot = [Int]()
    var elementsGreaterThanPivot = [Int]()
    for element in arr {
        if element < pivot {
            elementsLessThanPivot.append(element)
        }
        if element == pivot {
            elementsEqualToPivot.append(element)
        }
        if element > pivot {
            elementsGreaterThanPivot.append(element)
        }
    }
    print("quickSort(\(elementsLessThanPivot)) + \(elementsEqualToPivot) + quickSort(\(elementsGreaterThanPivot))")
    return quickSort(arr: elementsLessThanPivot) + elementsEqualToPivot + quickSort(arr: elementsGreaterThanPivot)
}


//bubbleSort(arr: bigArr)
//mergeSort(arr: bigArr)
quickSort(arr: sortedArr)
