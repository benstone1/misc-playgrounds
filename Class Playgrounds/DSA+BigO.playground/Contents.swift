//: Playground - noun: a place where people can play

import Foundation
//
//
//func constantTime(arr: [String]) {
//    let startTime = Date.init()
//    guard arr.count > 0 else {
//        return
//    }
//    print(arr[0], terminator: ": ")
//    let endTime = Date.init()
//    let duration = DateInterval(start: startTime, end: endTime).duration
//    print("\(arr.count) elements took \(duration) seconds")
//}
//let oneString = "a"
//let oneHundredStrings = [String](repeatElement("a", count: 100))
//let tenThousandStrings = [String](repeatElement("a", count: 10_000))
//constantTime(arr: ["a","b","c"])
//constantTime(arr: oneHundredStrings)
//constantTime(arr: tenThousandStrings)
//
//func linearTime(arr: [String]) {
//    let startTime = Date.init()
//    for string in arr {
//        print(string)
//    }
//    let endTime = Date.init()
//    let duration = DateInterval(start: startTime, end: endTime).duration
//    print("\(arr.count) elements took \(duration) seconds")
//}
///*
//linearTime(arr: [oneString])
//linearTime(arr: oneHundredStrings)
//linearTime(arr: tenThousandStrings)
//*/
////Print out who selected which character.  Two players can select the same character.
//func quadraticTime(arr: [String]) {
//    let startTime = Date.init()
//    for stringOne in arr {
//        for stringTwo in arr {
//            print("Player One: \(stringOne), Player Two: \(stringTwo)")
//        }
//    }
//    let endTime = Date.init()
//    let duration = DateInterval(start: startTime, end: endTime).duration
//    print("\(arr.count) elements took \(duration) seconds")
//}
////quadraticTime(arr: [oneString])
////linearTime(arr: oneHundredStrings)
////quadraticTime(arr: oneHundredStrings)
//
//let n: Double = 1_200
//let cubed = pow(n, 100)
//let twoTotheN = pow(2, n)
//
//func exampleOne(string str: String, withCharacter c: Character) -> Bool {
//    for char in str.characters {
//        if char == c {
//            return true
//        }
//    }
//    return false
//}
//
//let testString = "hello there this is a string"
//let char: Character = "h"
//
//
//
//
//func exampleThree(arr: [Int]) -> Int {
//    var counter = 0
//    for num in arr {
//        if arr.contains(num+1) {
//            counter += 1
//        }
//    }
//    return counter
//}
//
//func bestAverageAndWorstFunc(arr: [Int]) {
//    if arr.count < 3  {
//        return
//    }
//    if arr[0] == 8_675_309 {
//        return
//    }
//    if arr[0] + arr[1] == 24_601 {
//        for _ in arr {
//            for _ in arr {
//                print("Gotcha!")
//            }
//        }
//        return
//    }
//    for num in arr {
//        print(num)
//    }
//}
//
//
//func compoundRuntimes(arr: [Int]) {
//    for _ in 0..<1000 {
//        print("Hi!")    //Constant Time
//    }
//    for num in arr {     //Linear
//        print(num)
//    }
//    for (indexOne,numOne) in arr.enumerated() {       //Linear
//        for (indexTwo, numTwo) in arr.enumerated() {  //Linear
//            if indexOne != indexTwo && numOne == numTwo { //Constant
//                print("It's a match! \(numOne) and \(numTwo) are equal") //Constant
//            }
//        }
//    }
//}
//O(1) + O(n) + ( (O(n) * O(n) * (1) )
//O(1) + O(n) + ( (O(n ^ 2) * O(1) )
//O(1) + O(n) + O(n ^ 2)
//O(n ^ 2)



print([1,4,3,65,2,5,2,4,5].filter{$0 % 2 == 1}.map{$0 * $0}.reduce(0){$0 + $1})
[1,4,3,65,2,5,2,4,5].sorted(by: {(a,b) in
    return (1...a).reduce(0){$0 + $1 % a == 0} < (1...b).reduce(0){$0 + $1 % b == 0}
})
