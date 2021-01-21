//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum ConversionError: Error {
    case notValidInt
}

func strToInt(str: String) throws -> Int {
    let strInt = Int(str)
    if strInt == nil {
        throw ConversionError.notValidInt
    }
    return strInt!
}

var itemsDict = ["Chips": 4, "Soda": 2, "Pretzels": 9, "Gum": 14]
var money: Double = 3

enum PaymentError: Error {
    case insufficientFunds
    case itemSoldOut
    case itemNotAvailable
}

func buyItem(named str: String) throws {
    guard money >= 1 else {
        throw PaymentError.insufficientFunds
    }
    guard let remainingItems = itemsDict[str] else {
        throw PaymentError.itemNotAvailable
    }
    guard remainingItems > 0 else {
        throw PaymentError.itemSoldOut
    }
    itemsDict[str] = remainingItems - 1
    money -= 1
}

