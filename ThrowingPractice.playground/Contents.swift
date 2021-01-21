//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var productsDict: [String: Int] = ["Chips": 4,
                                   "Sodas": 5,
                                   "Pretzels": 2,
                                   "Gum": 11
                                    ]
var money: Int = 3

enum PaymentError: Error {
    case itemSoldOut
    case insufficientFunds
    case itemNotAvailable
}

func buyItem(named str: String) throws -> Int {
    guard let remainingItems = productsDict[str] else {
        throw PaymentError.itemNotAvailable
    }
    guard remainingItems > 0 else {
        throw PaymentError.itemSoldOut
    }
    guard money > 0 else {
        throw PaymentError.insufficientFunds
    }
    productsDict[str] = remainingItems - 1
    money -= 1
    return money
}

//1) Make another function that throws
func buyChips() throws {
    try buyItem(named: "Chips")
    print("You successfully bought chips")
}

//2) Use a do-catch block
do {
    //try buyChips()
}
catch let error {
    if let payerror = error as? PaymentError {
        switch payerror {
        case .itemSoldOut:
            print("Sold out")
        case .insufficientFunds:
            print("Not enough money")
        case .itemNotAvailable:
            print("We don't stock that")
        }
    }
}

//3) Use try?
let remainingMoney = try? buyItem(named: "Sodas")

//This is what try? does
let a: Int?
do {
    a = try buyItem(named: "Sodas")
}
catch {
    a = nil
}

//4) Use try!
money = 100
let remainingMoney2 = try! buyItem(named: "Chips")

let b: Int
do {
    b = try buyItem(named: "Chips")
}
catch {
    fatalError()
}

/*
1. Write another function that throws it elsewhere
2. Use a do/catch pattern
3. Use try? to convert any returned objects to nil and ignore errors
4. Use try! to assert that no errors will occur and to crash if they do
*/
