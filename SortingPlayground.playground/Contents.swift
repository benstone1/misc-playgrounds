//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"





/*

func binarySearch<T: Comparable>(arr: [T], target: T) -> Bool {
    print(arr)
    //Base Cases
    guard !arr.isEmpty else { return false }
    let midIndex = arr.count / 2
    let midElement = arr[midIndex]
    if midElement == target { return true }
    //Recursive Calls
    if target > midElement {
        let elementsGreaterThanMid = Array(arr[(midIndex + 1)...])
        return binarySearch(arr: elementsGreaterThanMid, target: target)
    } else {
        let elementsLessThanMid = Array(arr[..<midIndex])
        return binarySearch(arr: elementsLessThanMid, target: target)
    }
}

let arr = [1,3,8,10,22,23,78,90,103]
let target = 200

//binarySearch(arr: arr, target: target)


func bubbleSort(arr: [Int]) -> [Int] {
    var arr = arr
    var madeSwapInLastPass = false
    repeat {
        madeSwapInLastPass = false
        for index in 0..<arr.count - 1 {
            print(arr)
            if arr[index] > arr[index + 1] {
                arr.swapAt(index, index + 1)
//                let temp = arr[index]
//                arr[index] = arr[index + 1]
//                arr[index + 1] = temp
                madeSwapInLastPass = true
            }
        }
    } while madeSwapInLastPass
    return arr
}

let unsortedArr = [122,5,3,68,5,9,46,235,265,400,0]

//bubbleSort(arr: unsortedArr)

func insertionSort(arr: [Int]) -> [Int] {
    var arr = arr
    var firstUnsortedElementIndex = 0
    while firstUnsortedElementIndex < arr.count {
        var currentIndex = firstUnsortedElementIndex
        while currentIndex > 0 {
            if arr[currentIndex] < arr[currentIndex - 1] {
                arr.swapAt(currentIndex, currentIndex - 1)
            }
            currentIndex -= 1
        }
        firstUnsortedElementIndex += 1
    }
    return arr
}

insertionSort(arr: unsortedArr)




func insertionSort(arr: [Int]) -> [Int] {
    var arr = arr
    var firstUnsortedElementIndex = 0
    while firstUnsortedElementIndex < arr.count {
        var currentIndex = firstUnsortedElementIndex
        while currentIndex > 0 {
            if arr[currentIndex] < arr[currentIndex - 1] {
                let temp = arr[currentIndex]
                arr[currentIndex] = arr[currentIndex - 1]
                arr[currentIndex - 1] = temp
            }
            currentIndex -= 1
        }
        firstUnsortedElementIndex += 1
    }
    return arr
}

 
 
 
func bubbleSort(arr: [Int]) -> [Int] {
    var arr = arr
    var madeSwapInLastPass = false
    repeat {
        madeSwapInLastPass = false
        for index in 0..<arr.count - 1 {
            if arr[index] > arr[index + 1] {
                //swap(&arr[index], &index[index + 1])
                let temp = arr[index]
                arr[index] = arr[index + 1]
                arr[index + 1] = temp
                madeSwapInLastPass = true
            }
        }
    } while madeSwapInLastPass
    return arr
}

//print(bubbleSort(arr: [4,2,49,3,100,1]))



insertionSort(arr: [4,2,49,3,100,1,39,43])


func binarySearch(arr: [Int], target: Int) -> Bool {
    guard !arr.isEmpty else { return false }
    let midIndex = arr.count / 2
    let midElement = arr[midIndex]
    if midElement == target { return true }
    if target > midElement {
        let elementsGreaterThanMid = Array(arr[(midIndex + 1)...])
        return binarySearch(arr: elementsGreaterThanMid, target: target)
    } else {
        let elementsLessThanMid = Array(arr[..<midIndex])
        return binarySearch(arr: elementsLessThanMid, target: target)
    }
}

binarySearch(arr: [1], target: 9)

let arr = [3]
arr[1...]

*/
