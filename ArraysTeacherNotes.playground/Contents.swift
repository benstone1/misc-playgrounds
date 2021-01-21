//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var myArr = Array(repeating: "eqwerqwer", count: 4)

myArr.capacity

myArr.append("ds")

myArr.capacity

let newArr = myArr[3..<5]

let myStapleItemsD = ["Cheese", "Milk", "Eggs", "Butter", "Bread"]
var myShoppingListD = ["Crackers", "Chips", "Salsa"]

for itemOne in myShoppingListD {
    for itemTwo in myStapleItemsD {
        myShoppingListD.append(itemTwo)
    }
}
let d = myShoppingListD.count


