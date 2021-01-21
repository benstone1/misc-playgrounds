//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Map

//Rewrite map (it needs to work for Doubles)

//Inputs
//arr: [Double]
//closure: (Double) -> Double

//Output
//[Double]

func myMap(arr: [Double], closure: (Double) -> Double) -> [Double] {
    var finalArr = [Double]()
    for element in arr {
        //transform element
        let transformedElement = closure(element)
        //append the tranformed element to finalArr
        finalArr.append(transformedElement)
    }
    return finalArr
}
let inputArr: [Double] = [1,3,4,5]
let doubler = ({(num: Double) -> Double in
        return num * 2
})
myMap(arr: inputArr, closure: doubler)
inputArr.map(doubler)


func myReduce(arr: [Double], closure: (Double, Double) -> Double, startingVal: Double) -> Double {
    var accumulatedVal = startingVal
    for element in arr {
        accumulatedVal = closure(accumulatedVal, element)
    }
    return accumulatedVal
}

inputArr.reduce(0, +)
let adder = {(a: Double, b: Double) -> Double in
    return a + b
}
myReduce(arr: inputArr, closure: adder, startingVal: 0)
