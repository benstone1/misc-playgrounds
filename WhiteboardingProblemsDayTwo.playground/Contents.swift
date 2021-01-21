//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Change making problem

func waysToMake(finalValue: Double, with coins: [Double], startingValue: Double = 0) -> Int {
    //base cases
    if finalValue == startingValue { return 1 }
    if finalValue < startingValue { return 0 }
    //recursive call
    return coins.map{waysToMake(finalValue: finalValue, with: coins, startingValue: $0 + startingValue)}.reduce(0, +)
}


var coinDict = [Int: Int]()

func memoizedWaysToMake(finalValue: Int, with coins: [Int], startingValue: Int = 0) -> Int {
    if finalValue == startingValue { return 1 }
    if finalValue < startingValue { return 0 }
    var sum = 0
    var paths = [[Int]]()
    for coin in coins {
        if let pathNum = coinDict[startingValue + coin] {
            sum += pathNum
        } else {
            let pathNum = memoizedWaysToMake(finalValue: finalValue, with: coins, startingValue: startingValue + coin)
            coinDict[startingValue + coin] = pathNum
            sum += pathNum
        }
    }
    return sum
}

memoizedWaysToMake(finalValue: 3, with: [1,2])

func allPaths(to finalValue: Int, with coins: [Int], currentCoins: [Int] = []) -> [[Int]] {
    //Base Cases
    if finalValue == currentCoins.reduce(0, +) { return [currentCoins] }
    if finalValue < currentCoins.reduce(0, +) { return [] }
    //Recursive Call
    return coins.reduce([[Int]]()){(currentPaths, coinValue) in
        currentPaths + allPaths(to: finalValue, with: coins, currentCoins: currentCoins + [coinValue])
    }
}

func allUniquePaths(to finalValue: Int, with coins: [Int], currentCoins: [Int] = []) -> [[Int]] {
    //Base Cases 
    if finalValue == currentCoins.reduce(0, +) { return [currentCoins] }
    if finalValue < currentCoins.reduce(0, +) { return [] }
    //Recursive Call
    let paths = coins.reduce([[Int]]()){(currentPaths, coinValue) in
        currentPaths + allUniquePaths(to: finalValue, with: coins, currentCoins: currentCoins + [coinValue])
    }
    var uniquePaths = [[Int]]()
    for path in paths {
        if !twoDArray(uniquePaths, contains: path) {
            uniquePaths.append(path)
        }
    }
    return uniquePaths
}

func twoDArray(_ twoDArr: [[Int]], contains inputArr: [Int]) -> Bool {
    for arr in twoDArr {
        let sortedArr = arr.sorted()
        let sortedInput = inputArr.sorted()
        guard sortedArr.count == sortedInput.count else { continue }
        var foundMatch = true
        for index in 0..<sortedArr.count {
            if sortedArr[index] != sortedInput[index] {
                foundMatch = false
            }
        }
        if foundMatch { return true }
    }
    return false
}

print(allUniquePaths(to: 10, with: [1,2,5]))

/*
 

 
 func waysToMakeMemoized(finalValue: Int, with coins: [Int], startingValue: Int = 0) -> Int {
 print(startingValue)
 //base cases
 if finalValue == startingValue { return 1 }
 if finalValue < startingValue { return 0 }
 //recursive call
 
 let c1Paths: Int
 if let coin1DictPaths = coinDict[startingValue + coins[0]] {
 c1Paths = coin1DictPaths
 } else {
 c1Paths = waysToMakeMemoized(finalValue: finalValue, with: coins, startingValue: startingValue + coins[0])
 coinDict[startingValue + coins[0]] = c1Paths
 }
 let c2Paths: Int
 if let coin2DictPaths = coinDict[startingValue + coins[1]] {
 c2Paths = coin2DictPaths
 } else {
 c2Paths = waysToMakeMemoized(finalValue: finalValue, with: coins, startingValue: startingValue + coins[1])
 coinDict[startingValue + coins[1]] = c2Paths
 }
 return c1Paths + c2Paths
 }
 
 waysToMakeMemoized(finalValue: 6, with: [1,5])
 print(coinDict)
 

 
 */
