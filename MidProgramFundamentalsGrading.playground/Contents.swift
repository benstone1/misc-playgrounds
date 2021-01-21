//: Playground - noun: a place where people can play

import UIKit


func countDownToZeroIter(from num: Int) {
    for n in 0...num {
        print(num - n)
    }
}

func countDownToZeroRecursively(from num : Int) {
    print(num)
    if num <= 0 {return} //Base case
    countDownToZeroRecursively(from: num - 1) //Recursive call
}

//countDownToZeroRecursively(from: 10)


func countUp(to n: Int) {
    if n <= 0 {return} //Base case
    countUp(to: n - 1) //Recursive call
    print(n)
}

//countUp(to: 5)

func factorialIter(n: Int) -> Int {
    var product = 1
    for num in (1...n) {
        product *= num
    }
    return product
}

func factorial(n: Int) -> Int {
    guard n != 0 else { return 1 } //base case
    return n * factorial(n: n - 1) //recursive call
}

factorial(n: 5)

var fibNums = [Int: Int]()

var product = 1



func fib(n: Int) -> Int {
    guard n > 1 else {return 1}
    if let nthFibNum = fibNums[n] {
        return nthFibNum
    }
    let nthFibNum = fib(n: n - 1) + fib(n: n - 2)
    fibNums[n] = nthFibNum
    return nthFibNum
}

fib(n: 63)

fibNums.count
/*
let someCapitals = ["Alabama" : "Montgomery",
                    "Alaska" : "Juneau",
                    "Arizona" : "Phoenix",
                    "Arkansas" : "Little Rock",
                    "California" : "Sacramento",
                    "Colorado" : "Denver"]

enum Ship: String {
    case battle
    case friend
}

let numb3rs = ["1", "2", "chair", "5", "seventeen", "89"]
let arr =  ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]


func iterFib(n: Int) -> Int {
    guard n > 1 else { return 1 }
    var a = 1
    var b = 1
    for _ in 2..<n {
        let temp = b
        b = a + b
        a = temp
    }
    return a + b
}

iterFib(n: 10)


func recursiveFib(n: Int) -> Int {
    guard n > 1 else { return 1 }
    return recursiveFib(n: n - 1) + recursiveFib(n: n - 2)
}

recursiveFib(n: 10)

var primeDict = [Int: Bool]()

func isPrime(n: Int) -> Bool {
    if let nIsPrime = primeDict[n] {
        return nIsPrime
    }
    for possibleFactor in 2...Int(sqrt(Double(n))) {
        if n % possibleFactor == 0 {
            primeDict[n] = false
            return false
        }
    }
    primeDict[n] = true
    return true
}

enum DSAPropKey: String {
    case name
    case lastName
}


let a: String = DSAPropKey.name.rawValue

let b = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
print(b)
*/
