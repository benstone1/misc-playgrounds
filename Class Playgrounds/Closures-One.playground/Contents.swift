//: Playground - noun: a place where people can play

import UIKit
/*
//Addition

func add0(_ numOne: Int, _ numTwo: Int) -> Int {
    return numOne + numTwo
}

let add = {(numOne: Int, numTwo: Int) -> Int in
    return  numOne + numTwo
}

let add1: (Int, Int) -> Int = {(a, b) in
    return a + b
}
print(add)
let myArr = [add]
add(4, 9)

//Subtract
let subtract = {(a: Int, b: Int) -> Int in
    return a - b
}

//Multiply

let multiply: (Int, Int) -> Int = {(a,b) in
    return a * b
}

//Divide
let divide: (Int, Int) -> Int = {(a,b) in
    if b == 0 { return 0 }
    return a / b
}

let operations = [add, subtract, multiply, divide]

func combine(_ x: Int, and y: Int, with operation: (Int, Int) -> Int = {$0 + $1}) -> Int {
    let result = operation(x,y)
    return result
}
let mod = {(a: Int, b: Int)-> Int in
    return a % b
}

combine(10, and: 3, with: mod)

combine(10, and: 3, with: {(a: Int, b: Int) -> Int in
    return a % b
})

combine(10, and: 3, with: {(a, b) in
    return a % b
})

combine(10, and: 3, with: {(a, b) in return a % b })

combine(10, and: 3, with: {(a, b) in a % b })

//Shorthand notation: $0 and $1

combine(10, and: 3, with: {$0 % $1})

combine(10, and: 3, with: %)

combine(10, and: 4)

let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

//Array((names.sorted()).reversed())

let forwards: (String, String) -> Bool = {(a,b) in
    let isAlreadyInOrder = a < b
    return isAlreadyInOrder
}

let backwards: (String, String) -> Bool = {(a,b) in
    let isAlreadyInOrder = a > b
    return isAlreadyInOrder
}


names.sorted(by: forwards)

names.sorted(by: backwards)

//Trailing closure syntax
names.sorted{$0 > $1}

names.sorted(by: >)

let numbers = [32, 21, 33, 2, 66, 88, 43, 902, 73, 27, 905]
let words = ["One", "two", "Buckle", "my", "shoe"]

let descendingCaseInsensitive = {(a: String, b: String) -> Bool in
    let isAlreadySorted = a.lowercased() > b.lowercased()
    return isAlreadySorted
}

numbers.sorted()
words.sorted(by: descendingCaseInsensitive)
words.sorted{$0.lowercased() > $1.lowercased()}

words.sorted{$0.count < $1.count}

let ascendingEvenFirst = {(a: Int, b: Int) -> Bool in
    let aIsOdd = a % 2 == 1
    let bIsOdd = b % 2 == 1
    if aIsOdd && !bIsOdd {
        return false
    }
    if !aIsOdd && bIsOdd {
        return true
    }
    return a < b
}

numbers.sorted(by: ascendingEvenFirst)

numbers.sorted(by: {(($0 % 2 == 0) != ($1 % 2 == 0)) ? $0 % 2 == 0 : $0 < $1})

//Sort numbers ascending, even numbers first, odd numbers second. Output will be [2, 32, 66, 88, 902, 21, 27, 33, 43, 73, 905].

//Use filter to filter out elements
//Only keep elements meeting a given condition (given by a closure)

//Filter all the even
var evenNumbers = [Int]()
for number in numbers {
    if number % 2 == 0 {
        evenNumbers.append(number)
    }
}
print(evenNumbers)

let byEvenNumbers: (Int) -> Bool = {(a: Int) in
    return a % 2 == 0
}
numbers.filter(byEvenNumbers)

numbers.filter({(a: Int) in
    return a % 2 == 0
})

print(numbers.filter{$0 % 2 == 0}.sorted() + numbers.filter{$0 % 2 == 1}.sorted())

//Map transforms the values from one array into a new array
//The transformation is according to a closure

var nums = [2,3,5,1,8]

var doubledArr = [Int]()
for num in nums {
    let doubledNum = num * 2
    doubledArr.append(doubledNum)
}


let a = numbers.filter{$0 % 2 == 1}.map{$0 * 2}

//Flatmap
let temperatures: [Double?] = [nil, 43.0, 45.5, nil, nil, 53.2, nil, 0]

let validTemps = temperatures.flatMap{$0}
let validTemps2 = temperatures.filter{$0 != nil}.map{$0!}


//Reduce turning an array into a single element
//Reduce takes a starting value and a way of combining the current accumulated value and the new thing in the array

var sum = 0
for number in numbers {
    sum += number
}

sum = numbers.reduce(0){(everythingWeHaveSoFar: Int, theNextThing: Int) -> Int in
    return everythingWeHaveSoFar + theNextThing
}
print(sum)

sum = numbers.reduce(100, +)

nums
//print(nums.reduce(false){$0 || ($1 == 5)})
*/

let nums = [2,3,5,1,8]


//Filter
print(nums.filter{$0 % 2 == 0})
//Map
print(nums.map{Double($0) / 2.0})
//Reduce
print(nums.reduce(""){$0 + String($1)})

print("Hello World".filter{String($0) == String($0).lowercased()})


var sum = 10
for num in nums {
    sum += num
}

print(nums.reduce(Int.min){$1 > $0 ? $1 : $0})
print(nums.reduce(Int.min) { (current, next) -> Int in
    if current < next {
        return next
    } else {
        return current
    }
})

nums.reduce(true){$0 && $1 == nums[0]}

