//: Playground - noun: a place where people can play

import UIKit
/*

//Closures

//"Function Literal"
//"Anonymous Function"

let printGreeting = {
    print("Hello World")
}

let add = {(a: Int, b: Int) -> Int in
    let sum = a + b
    return sum
}


let add2: (Int, Int) -> Int = {(a, b) in
    return a + b
}

//YOU TRY: Make a closure for subtraction, multiplication and division

let subtract = {(a: Int, b: Int) -> Int in
    return a - b
}
let divide = {(a: Int, b: Int) -> Int in
    return a / b
}
let multiply = {(a: Int, b: Int) -> Int in
    return a * b
}

//Closures are just like any other type

let operations: [(Int, Int) -> Int] = [add, subtract, multiply, divide]

func combine(_ x: Int, and y: Int, with operation: (Int, Int) -> Int) -> Int {
    return operation(x, y)
}

combine(8, and: 3, with: subtract)

//YOU TRY Combine 8 and 3 with modulo using the combine function

combine(8, and: 3, with: {(a: Int, b: Int) -> Int in
    let mod = a % b
    return mod
})

//Sort

var names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

names.sorted()

//Sort backwards

//https://developer.apple.com/documentation/swift/array/2296815-sorted

func backwards(s1: String, s2: String) -> Bool {
    return s1 > s2
}

names.sorted(by: backwards)

//YOU TRY Rewrite backwards as a closure

let backwardsClosure = {(s1: String, s2: String) -> Bool in
    return s1 > s2
}

names.sorted(by: backwardsClosure)

names.sorted(by: {(s1: String, s2: String) -> Bool in
    return s1 > s2
})

names.sorted(by: {(s1: String, s2: String) -> Bool in return s1 > s2})


names.sorted(by: {(s1, s2) in s1 > s2})

names.sorted(by: {$0 > $1})

names.sorted(by: >)

//Trailing closure syntax
names.sorted(){$0 > $1}
names.sorted{$0 > $1}


//map filter and reduce


"blehad".reduce(""){$0 + ("aeiou".contains($1) ? "" : String($1))}


func makeCounter(initialValue: Int) -> (Int) -> Int {
    var count = initialValue
    func counter(incrementBy val: Int) -> Int {
        count += val
        return count
    }
    return counter
}

let growby = makeCounter(initialValue: 1)

growby(5)
growby(10)


let nums = [1,6,4,2,5,3]

nums.sorted{(firstVal: Int, secondVal: Int) -> Bool in
    func factorCount(_ n: Int) -> Int {
        return (1...n).reduce(0){$0 + (n % $1 == 0 ? 1 : 0)}
    }
    return factorCount(firstVal) < factorCount(secondVal)
}

extension Array where Element == Int {
    func factorSort() -> [Int]{
        return self.sorted{(firstVal, secondVal) in
            func factorCount(_ n: Int) -> Int {
                return (1...n).reduce(0){$0 + (n % $1 == 0 ? 1 : 0)}
            }
            return factorCount(firstVal) < factorCount(secondVal)
        }
    }
}

nums.factorSort()

func sum(of arr: [Int]) -> Int {
    var sum = 0
    for element in arr {
        sum += element
    }
    return sum
}
sum(of: nums)
nums.reduce(0, +)

func makeMultiplier(factor: Int) -> (Int) -> Int {
    let timesN: (Int) -> Int = {factor * $0}
    return timesN
}

let timesFive = makeMultiplier(factor: 5)
timesFive(6)
*/
var numbers = [5, 6, 6]

func numberOfDivisorsLong(n: Int) -> Int {
    var count = 0
    for possibleDivisor in 1...n {
        if n % possibleDivisor == 0 {
            count += 1
        }
    }
    return count
}

func numberOfDivisors(n: Int) -> Int {
    return (1...n).reduce(0){$0 + (n % $1 == 0 ? 1 : 0)}
}

print(numbers.sorted{numberOfDivisors(n: $0) < numberOfDivisors(n: $1)})

let nthLargest: ([Int], Int) -> Int? = {(arr, index) in
    let index = index - 1
    let arr = Array(Set(arr))
    guard (0...arr.count).contains(index) else {
        return nil
    }
    return arr.sorted(by: >)[index]
}

nthLargest(numbers, 4)


var alphaDict = [Int : Character]()
for (x,y) in "abcdefghijklmnopqrstuvwxyz".enumerated() {
    alphaDict[x+1] = y
}

let optionalIntArray = [1, 12, 12, nil, 2, 5, 14, 19, nil, 6, 1, 21, 12, 20]

let a = optionalIntArray.map{(num: Int?) -> Character in
    guard let num = num else {
        return " "
    }
    return alphaDict[num]!
    }.reduce(""){$0 + String($1)
}

print(a)
