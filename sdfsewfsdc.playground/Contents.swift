import Foundation

func expandedForm(_ num: Int) -> String {
    var finalStr: String?
    let numberOfDigits = String(num).characters.count 
    var numsCoveredSoFar: Int = 0
    var placeValue = 1
    while placeValue <= numberOfDigits {
        let power = Int(pow(Double(10), Double(placeValue)))
        let newNum = num % power - numsCoveredSoFar
        numsCoveredSoFar += newNum
        if newNum != 0 {
            if let str = finalStr {
                finalStr = "\(String(newNum)) + \(str)"
            } else {
                finalStr = "\(String(newNum))"
            }
        }
        placeValue += 1
    }
    return finalStr!
}

func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
    var storedInts = (first: signature[0], second: signature[1], third: signature[2])
    var sequence = signature
    for _ in 0..<n {
        let nextInt = storedInts.first + storedInts.second + storedInts.third
        storedInts = shift(storedInts, with: nextInt)
        sequence.append(nextInt)
    }
    return sequence
}

func shift(_ storedNums: (Int, Int, Int), with newNum: Int) -> (Int, Int, Int) {
    var storedNums = storedNums
    storedNums.0 = storedNums.1
    storedNums.1 = storedNums.2
    storedNums.2 = newNum
    return storedNums
}

func removNb(_ n: Int) -> [(Int,Int)] {
    var myDict = [Int: Int]()
    let listSum: Int = (n * (n + 1)) / 2
    var finalPairs = [(Int, Int)]()
    for i in 1...n {
        if let partnerNum = myDict[i] {
            finalPairs.append((Int(partnerNum), i))
            finalPairs.append((i, Int(partnerNum)))
        } else {
            guard (listSum - i) % (i + 1) == 0 else {
                continue
            }
            let targetNum = (listSum - i) / (i + 1)
            myDict[targetNum] = i
        }
    }
    return finalPairs.sorted{ $0.0 < $0.1 }
}

import Foundation

func getLines(_ num:Int?) -> String {
    guard num! > 0 else {
        return ""
    }
    var sequence = ["1"]
    for _ in 0..<num! {
        sequence.append(speakLine(sequence.last!))
    }
    return sequence.componentsSeparated(by: ",")
}

func speakLine(str: String) -> String {
    var finalStr = ""
    var lastChar: Character?
    var count = 0
    for c in str.characters {
        if let last = lastChar, c == last {
            count += 1
        } else {
            if count != 0 {
                finalStr += "\(count)\(lastChar)"
            } 
            lastChar = c
            count = 1
        }
    }
}