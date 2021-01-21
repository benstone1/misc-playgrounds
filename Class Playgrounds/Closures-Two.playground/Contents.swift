////: Playground - noun: a place where people can play
//
//import UIKit
/////*
/////*
//////Higher ordered functions work with any collection type
////
////var str = "Hello, playground"
////var myDictionary = ["Adam": 9, "Ben": 4, "Carla": 2, "Don": 10]
//////["Adam: 9", "Ben: 4", ...]
//////Filter
//////$0 is the current thing in the collection you are iterating over
////let filteredStr = str.filter({(currentChar: Character) -> Bool in
////    return currentChar != ","
////})
////let filteredStr2 = str.filter{$0 != ","}
////print(filteredStr2)
////
////let filteredDictionary = myDictionary.filter{$0.key.count < 4}
////print(filteredDictionary)
////
////let filteredDictionary2 = myDictionary.filter{$0.value > 5}
////print(filteredDictionary2)
////
////let filteredDictionary3 = myDictionary.filter{$0.key.count < 4 && $0.value > 5}
////print(filteredDictionary3)
////
//////Map
//////$0 is the current thing in the collection you are iterating over
////let capitalizedVowels = String(str.map({(currentChar: Character) -> Character in
////    if "aeiou".contains(currentChar) {
////        return Character(currentChar.description.capitalized)
////    } else {
////        return currentChar
////    }
////}))
////
////let capilatizedVowels2 = String(str.map{
////    "aeiou".contains($0) ? Character(String($0).uppercased()) : $0
////})
////print(capitalizedVowels)
////print(capilatizedVowels2)
////
////let mappedDictionary = myDictionary.map{"Name: \($0.key): Order number: \($0.value)"}
////print(mappedDictionary)
////
////let doubledDictionary = myDictionary.mapValues{$0 * 2}
////print(doubledDictionary)
////
//////Reduce
//////$0 is the acculumation of everything you have so far
//////$1 is the current thing in the collection you are iterating over
////
////let greatestChar = str.reduce(str.first ?? " ", {return ($1 > $0 ? $1 : $0)})
////print(greatestChar)
////
////let greatestChar2 = str.reduce(str.first ?? " ", {
////    if $1 > $0 {
////        return $1
////    } else {
////        return $0
////    }
////})
////
////
////let nums = [2,3]
////
////nums.reduce(nums.first!){(largestIntSoFar: Int, currentInt: Int) -> Int in
////    if currentInt > largestIntSoFar {
////        print("Found a new largest int: it's \(currentInt)")
////        return currentInt
////    } else {
////        print("Turns out that \(currentInt) isn't bigger than \(largestIntSoFar)")
////        return largestIntSoFar
////    }
////}
////
////print(myDictionary.reduce(0, {$0 + $1.value}))
////myDictionary.reduce("", {
////    $0 + $1.key + " "
////})
////
////myDictionary.reduce(""){
////    $0 + $1.key + " "
////}
////
////
////var sum = 0
////for num in nums {
////    sum += num
////}
////
////
////
////func weirdFunc(weirdClosure c: (Int, Int, Int, Int) -> Int = {$0 + $1 + $2 + $3} ) {
////    print("If I give all ones as input to your weird closure, the output would be \(c(1,1,1,1))")
////}
////
////weirdFunc()
//// */
////
////
//////Sort
//////$0 is the current thing in the collection you are iterating over
//////$1 is the next thing in the collection you are iterating over
////
////print(str.sorted(){$0 > $1})
////print(myDictionary.sorted(by: {$0.value < $1.value}))
////
////
////func makeDoubler() -> (Int) -> Int {
////    return { (n: Int) -> Int in
////        return n * 2
////    }
////}
////
////makeDoubler()(4)  // has the value of 8
////*/
////
////
////var doubler = { (a: Int) -> Int in
////    return a * 2
////}
////
////doubler(5)
////
////
////func makeDoubler() -> (Int) -> Int {
////    return {(a: Int) -> Int in
////        return a * 2
////    }
////}
////
////func makeDoubler2() -> (Int) -> Int {
////    return {$0 * 2}
////}
////
////let myDoubler = makeDoubler()
////let doubledNum = myDoubler(4)
////
////makeDoubler()(5)
////
////func makeMultiplierLonger(factor: Int) -> (Int) -> Int {
////    let newClosure = {(userInputRecievedLater: Int) -> Int in
////        return userInputRecievedLater * factor
////    }
////    return newClosure
////}
////
////
////func makeMultiplier(factor: Int) -> (Int) -> Int {
////    return {(userInputRecievedLater: Int) -> Int in
////        return userInputRecievedLater * factor
////    }
////}
////
////func makeMultiplierShorthand(factor: Int) -> (Int) -> Int {
////    return {$0 * factor}
////}
////
////let newDoubler = makeMultiplier(factor: 2)
////let myTripler = makeMultiplier(factor: 3)
////newDoubler(7)
////myTripler(4)
////
////let sevenTimes = makeMultiplier(factor: 7)
////sevenTimes(9)
////
////myTripler(6)
////var factor = 8
////
////let octupler = { (n) in
////    return factor * n
////}
////
////factor = 2
////
////octupler(10)
////
//////Prefix: "Mr. "
//////Suffix: " Esq."
////
////func stringMakerShorthand(prefix: String, suffix: String) -> (String) -> String {
////    return {prefix + $0 + suffix}
////}
////
////
////
////func stringMaker(prefix: String, suffix: String) -> (String) -> String {
////    return {(userInput: String) in
////        return prefix + userInput + suffix
////    }
////}
////
////let fancyNameMaker = stringMaker(prefix: "Mr. ", suffix: " Esq.")
////let myFancyName = fancyNameMaker("Ben")
//////print(myFancyName)
//////"Mr. Ben Esq."
////
////
////func makeIncrementer(for amount: Int) -> () -> Int {
////    var runningTotal = 0
////    func incrementer() -> Int {
////        runningTotal += amount
////        return runningTotal
////    }
////    return incrementer
////}
////
////var fiveCounter = makeIncrementer(for: 5)
////fiveCounter()
////fiveCounter()
////fiveCounter = makeIncrementer(for: 5)
////fiveCounter()
////
/////*
////let fiveCounter = makeIncrementer(for: 5)
////fiveCounter()
////fiveCounter()
////fiveCounter()
////fiveCounter()
////let oneCounter = makeIncrementer(for: 1)
////let tenCounter = makeIncrementer(for: 10)
////oneCounter()
////oneCounter()
////tenCounter()
////fiveCounter()
////oneCounter()
////fiveCounter()
////tenCounter()
////oneCounter()
////
//////Pass by value
////var myArr = [1,2,3]
////var myArrCopy = myArr
////myArr = [4,5,6]
////print(myArrCopy)
////
//////Pass by reference
////let incByOne = makeIncrementer(for: 1)
////incByOne()
////incByOne()
////let incByOneCopy = incByOne  //The same running total for both
////incByOneCopy()
////incByOne()
////incByOneCopy()
////incByOneCopy()
////incByOne()
////let inc3 = makeIncrementer(for: 10) // 5. another incrementer
////inc3()                  // 6. runningTotal = 10
////let inc4 = inc3         // 7. inc4 is a *reference to* inc3: they point to the same thing
////inc4()                  // 8. runningTotal = 20
////
////*/
////
////
////func makeIncrementer(forIncrement amount: Int) -> () -> Int {
////    var runningTotal = 0
////    return {
////        runningTotal += amount
////        return runningTotal
////    }
////}
////
////func mathStuffFactory(opString: String) -> (Double, Double) -> Double {
////    switch opString {
////    case "+":
////        return {x, y in x + y }
////    case "-":
////        return {x, y in x - y }
////    case "*":
////        return {x, y in x * y }
////    case "/":
////        return {x, y in x / y }
////    default:
////        return {x, y in x + y }
////    }
////}
////
////mathStuffFactory(opString: "/")(5,3)
////*/
//func makeIncrementer(forIncrement amount: Int) -> () -> Int {
//    var runningTotal = 0
//    func incrementer() -> Int {
//        runningTotal += amount
//        return runningTotal
//    }
//    return incrementer
//}
//var inc3 = makeIncrementer(forIncrement: 3)
//var inc5 = makeIncrementer(forIncrement: 5)
//inc3()
//inc3()
//inc5()
//inc5 = inc3
//inc5()
//print(inc5())
//
//var randomDict = [1: "A", 2: "B", 3: "C", 4: "D", 5: "E"]
//func returnLetter() -> () -> String {
//    var number = 1
//    func nextLetter() -> String {
//        if number != 5 {
//            number += 1
//        } else {
//            number = 1
//        }
//        return randomDict[number]!
//    }
//    return nextLetter
//}
//
//var aLetter = returnLetter()
//var someOtherLetter = aLetter()
//print(someOtherLetter)
//
//func divide(thisNumber: Int) -> (Int) -> Double {
//    return {(n: Int) -> Double in
//                return Double(thisNumber) / Double(n)
//            }
//}
//
//
//var numberArray = [5, 2, 1]
//var a = numberArray.map{$0 * 2}
//print(a)
//var b = a.reduce(a[0] * 2, -)
//print(b)
//
//var total = 20
//for val in a {
//    total -= val
//}
//print(total)
//
//
//[1,4,6,8]
//[2,3,6,7]
//
//[3,7,12,15]
//
//"+" {$0 + $1}
//"-"
//
//let result = closure(arr1[0], arr2[0])
//finalArr.append(rsult)
//Q4
let myArray = [34,42,42,1,3,4,3,2,49]

let ascendingOrder: (Int, Int) -> Bool = {$0 < $1}
let descendingOrder: (Int, Int) -> Bool = {$0 > $1}
let mySortedArray = myArray.sorted(by: ascendingOrder)
let mySecondSortedArr = myArray.sorted(by: descendingOrder)

//Q3
let theInts = [1, 2, 3, 44, 555, 6600, 10763]

//Mapping ints to strings
func myMap(arr: [Int], transform: (Int) -> String) -> [String] {
    var finalArr = [String]()
    for num in arr {
        finalArr.append(transform(num))
    }
    return finalArr
}

let asString: (Int) -> String = {String($0)}
let evenOrOdd: (Int) -> String = {$0 % 2 == 0 ? "Even" : "Odd"}
let englishWords: (Int) -> String = {(input: Int) in
    let wordDict = [1: "One",
                    2: "Two",
                    3: "Three",
                    4: "Four",
                    5: "Five",
                    6: "Six",
                    7: "Seven",
                    8: "Eight",
                    9: "Nine",
                    0: "Zero"]
    let a = Array(String(input))
    .map{Int(String($0))}
    .map{wordDict[$0!]}
    .reduce("", {$0 + $1! + " "})
    return a
}

let englishWords2: (Int) -> String = {(input: Int) in
    let wordDict = [1: "One",
                    2: "Two",
                    3: "Three",
                    4: "Four",
                    5: "Five",
                    6: "Six",
                    7: "Seven",
                    8: "Eight",
                    9: "Nine",
                    0: "Zero"]
    let intArrAsChars = Array(String(input))
    let intArrAsInts = intArrAsChars.map{Int(String($0))}
    let intArrAsIntsWithNoNils = intArrAsInts.flatMap{$0}
    let arrOfString = intArrAsIntsWithNoNils.map{wordDict[$0]}
    let arrOfStringWithNoNils = arrOfString.flatMap{$0}
    let finalStr = arrOfStringWithNoNils.reduce("", {$0 + $1 + " "})
    return finalStr
}

myMap(arr: theInts, transform: asString)
myMap(arr: theInts, transform: evenOrOdd)
myMap(arr: theInts, transform: englishWords)

let asString2 = {(inputInt: Int) -> String in
    let intAsString = String(inputInt)
    return intAsString
}
let evenOrOdd2 = {(inputInt: Int) -> String in
    if inputInt % 2 == 0 {
        return "Even"
    } else {
        return "Odd"
    }
}

let arrayOfArrays = [[3,65,2,4],[2,4],[25,3,1,6],[245,2,3,5,74],[1]]

print(arrayOfArrays.sorted{
    guard $0.count > 2 && $1.count > 2 else {
        return $0.count > $1.count
    }
    return $0[2] < $1[2]
})


