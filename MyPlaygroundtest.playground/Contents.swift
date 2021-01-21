//: Playground - noun: a place where people can play

import UIKit


var firstNum: Int = 0
var secondNum: Int?
secondNum = 5
if let thirdNum = secondNum {
    firstNum = 2
    print(thirdNum + firstNum)
}
else {
    print(firstNum)
}