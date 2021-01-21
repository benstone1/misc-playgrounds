//: Playground - noun: a place where people can play

import UIKit

func diagonalSum(of matrix: [[Int]]) -> Int {
    var sum = 0
    for i in 0..<matrix.count {
        sum += matrix[i][i]
        sum += matrix[i][matrix.count - 1 - i]
    }
    return sum
}

let matrix = [[1, 2, 9],
              [8, 2, 3],
              [4, 5, 6]]

diagonalSum(of: matrix)
