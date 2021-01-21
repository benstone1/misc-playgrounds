//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


private enum Operation {
    case constant(Double)
    case operand(Double)
    case variable(String)
    case unaryOperation((Double) -> Double)
    case binaryOperation((Double,Double) -> Double)
    case equals
    case clear
}


private var state2: Operation = .clear

private enum MostRecentOperation {
    case clear
    case isConstant(Double)
    case isUnary
    case isBinary
}

private var state: MostRecentOperation = .clear


let a = state2 == .clear
let b = state == .clear