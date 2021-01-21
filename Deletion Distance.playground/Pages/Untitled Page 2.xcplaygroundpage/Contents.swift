import Foundation

//Nonmemoized

func deletionDistance(between str1: String, and str2: String) -> Int {
    //base case
    guard str1.characters.count > 0 && str2.characters.count > 0 else {
        return str1.characters.count + str2.characters.count
    }
    //recursive call
    let str1LastChar = str1[str1.index(before: str1.endIndex)]
    let str2LastChar = str2[str2.index(before: str2.endIndex)]
    let str1ExcludingLastChar = str1[str1.startIndex..<str1.index(before:str1.endIndex)]
    let str2ExcludingLastChar = str2[str2.startIndex..<str2.index(before:str2.endIndex)]
    if str1LastChar == str2LastChar {
        return 0 + deletionDistance(between: str1ExcludingLastChar, and: str2ExcludingLastChar)
    } else {
        return 1 + min(deletionDistance(between: str1, and: str2ExcludingLastChar), deletionDistance(between: str1ExcludingLastChar, and: str2))
    }
}

deletionDistance(between: "some", and: "thing")


//Memoized

public struct TwoString {
    let str1: String
    let str2: String
}

extension TwoString: Hashable {
    public var hashValue: Int {
        return str1.appending(str2).hashValue
    }
    public static func == (lhs: TwoString, rhs: TwoString) -> Bool {
        return lhs.str1 == rhs.str1 && lhs.str2 == rhs.str2
    }
}

var storedSolutions = [TwoString: Int]()

func deletionDistanceMemoized(between str1: String, and str2: String) -> Int {
    let twoString = TwoString(str1: str1, str2: str2)
    if let val = storedSolutions[twoString] {
        return val
    }
    //base case
    guard str1.characters.count > 0 && str2.characters.count > 0 else {
        return str1.characters.count + str2.characters.count
    }
    //recursive call
    let str1LastChar = str1[str1.index(before: str1.endIndex)]
    let str2LastChar = str2[str2.index(before: str2.endIndex)]
    let str1ExcludingLastChar = str1[str1.startIndex..<str1.index(before:str1.endIndex)]
    let str2ExcludingLastChar = str2[str2.startIndex..<str2.index(before:str2.endIndex)]
    if str1LastChar == str2LastChar {
        storedSolutions[twoString] = 0 + deletionDistanceMemoized(between: str1ExcludingLastChar, and: str2ExcludingLastChar)
    } else {
        storedSolutions[twoString] = 1 + min(deletionDistanceMemoized(between: str1, and: str2ExcludingLastChar), deletionDistanceMemoized(between: str1ExcludingLastChar, and: str2))
    }
    return storedSolutions[twoString]!
}

deletionDistanceMemoized(between: "some", and: "thing")
