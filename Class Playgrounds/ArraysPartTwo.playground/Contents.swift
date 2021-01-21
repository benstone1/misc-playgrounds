//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"
//Given theMatrix, print out the difference of the sum of each diagonals

var theMatrix: [[Int]] = [[1, 2, 100],
                          [4, 5, 6],
                          [7, 8, 9]]

let diagOne = theMatrix[0][0] + theMatrix[1][1] + theMatrix[2][2]
let diagTwo = theMatrix[0][2] + theMatrix[1][1] + theMatrix[2][0]
let diagDiff = diagOne - diagTwo

theMatrix = [[1, 2],
             [4, 5, 6, 19, 4],
             [7, 8,2]]


/*
for row in theMatrix {
    for column in row {
        print(column)
    }
}
*/
for rowIndex in 0..<theMatrix.count {
    for columnIndex in 0..<theMatrix[rowIndex].count {
        print(theMatrix[rowIndex][columnIndex])
    }
}

theMatrix = [[1, 2, 3],
[4, 5, 6],
[7, 8, 9]]


let rowZero = theMatrix[0]
let rowZeroColumnOne = rowZero[1]

let rowOneColumnZero = theMatrix[1][0]
//print(8)
theMatrix[2][1]
//print(3)
theMatrix[0][2]
//print(5)
theMatrix[1][1]

//matrix[rowIndex][columnIndex]



let jerseyNums = [[23,52,51],
                  [22,54,15]]

//Print out all the jerseys for team one
/*
for teamIndex in 0..<jerseyNums.count {
    print("Jerseys for team \(teamIndex + 1)")
    for jersey in jerseyNums[teamIndex] {
        print(jersey)
    }
}
*/

let fiveZerosArr = Array(repeating: 0, count: 5)
//Make a 2-dimensional 5 x 5 array of Ints all set to 0

//let newArray = Array(repeating: Array(repeating: 0, count: 5), count: 5)

//let newArray = Array(repeating: fiveZerosArr, count: 5)

let newArray = Array(repeating: [0,0,0,0,0], count: 5)
print(newArray)

let newArr1 = Array(repeating: Array(repeating: 0, count: 5) , count: 5)
print(newArr1)

var emptyArray = [[Int]]()
for _ in 0..<5 {
    emptyArray.append([0, 0, 0, 0, 0])
}
print(emptyArray)

//if a doing a for loop when counting, start at zero?
*/

var square = [[1,2,3,6],
              [4,5,6,32],
              [7,8,9,1],
              [1,5,2,6]]

var totalSum = 0
for rowIndex in 0..<square.count {
    if rowIndex == 0 || rowIndex == square.count - 1 {
        var sumOfRow = 0
        for element in square[rowIndex] {
            sumOfRow += element
        }
        totalSum += sumOfRow
    } else {
        let leftMostElement = square[rowIndex][0]
        let rightMostElement = square[rowIndex][square[rowIndex].count - 1]
        totalSum += leftMostElement + rightMostElement
    }
}
totalSum

var sumOfborders = 0
for rowIndex in 0..<square.count{
    for columnIndex in 0..<square.count{
        if rowIndex == 0 || columnIndex == 0 || rowIndex == square.count - 1 || columnIndex == square.count - 1 {
            sumOfborders += square[rowIndex][columnIndex]
        }
    }
}
sumOfborders


var myArr = [4,2,45,1,3]

while let lastVal = myArr.popLast() {
    print(lastVal)
}

var maybeInt: Int? = 3
print(maybeInt)

var maybeStr: String? = "Ben"

var optionalDouble: (Int, Int)? = nil

var temperature: Double = 0

temperature = 20

//reset temperature

