//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum NumberWord: String {
    case one, two, three, four, five, six, seven, eight, nine, ten
}

let myNumberWord = NumberWord(rawValue: "two")
myNumberWord!.rawValue

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
    
}

var mathFunction: (Int, Int) -> Int = addTwoInts

addTwoInts(3, 4)
mathFunction(3,4)

var sampleStr = "These are the voyages of the starship Enterprise"
var yIsVowel = true


func disemvowel(str: String, yIsVowel: Bool = false) -> String {
    var vowels: Set<String> = ["a","e","i","o","u"]
    if yIsVowel {
        vowels.insert("y")
    }
    return str.filter{(c) in
        let lowecasedStr = String(c).lowercased()
        let shouldInclude = !vowels.contains(lowecasedStr)
        return shouldInclude
    }
}

disemvowel(str: sampleStr, yIsVowel: true)

func disemvowelWithCharSet(str: String, yIsVowel: Bool = false) -> String {
    let vowelsWithY = CharacterSet(charactersIn: "aeiouyAEIOUY")
    let vowelsWithoutY = CharacterSet(charactersIn: "aeiouAEIOU")
    
    let setToUse = yIsVowel ? vowelsWithY : vowelsWithoutY
    
    let finalStr = str.filter{!setToUse.contains($0.unicodeScalars.first!)}
    return finalStr
}

disemvowelWithCharSet(str: sampleStr, yIsVowel: true)


let arr = [41, 32, 93, 86, 24]

let sortByOnesPlace: (Int, Int) -> Bool = {$0 % 10 < $1 % 10}

let sortedArr = arr.sorted(by: <)
let sortedArrbyOnesPlace = arr.sorted(by: sortByOnesPlace)


let myArr = [3,2,1,8,1]

let newArr = myArr.map { (a: Int) -> Int in
    return a - 1
}

var sum = 0
for val in newArr {
    sum += val
}

print(sum)

enum CompassPoint: String {
    
    case north, south, east, west
    
}

//func printDirection(from cpoint: CompassPoint) {
//    //print(cpoint.rawValue)
//    switch cpoint {
//    case .north:
//        print("north")
//    case .south:
//        print("south")
//    }
//}

class Feature {
    var description: String
    init(description: String) {
        self.description = description
    }
}

class Point: Feature {
    var x: Double
    var y: Double

    init(description: String, x: Double, y: Double) {
        self.x = x
        self.y = y
        super.init(description: description)
    }
    convenience init(x: Double, y: Double) {
        self.init(description: "(\(x), \(y))", x: x, y: y)
    }
    
}

class City: Point {
    var name: String
    var population: Int
    init(description: String, x: Double, y: Double, name: String, population: Int) {
        self.name = name
        self.population = population
        super.init(description: description, x: x, y: y)
    }
}


let myPoint = Point(description: "here", x: 0, y: 0)
let myPoint2 = Point(x: 4, y: 8)
myPoint2.description
let myCity = City(description: "Big apple", x: 0, y: 0, name: "New York", population: 10_000_000)
