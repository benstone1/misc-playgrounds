////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
///*
// map (by doubling)
// filter (by evens)
//
//
//enum HighOrderedFunction {
//    case map
//    case filter
//}
//
////Write a funciton that either maps an array by doubling it, or filtering it by removing odds
//func higherOrderFunction(functionType: String, arr: [Int]) -> [Int] {
//    if functionType == "map" {
//        return arr.map{$0 * 2}
//    }
//    if functionType == "filter" {
//        return arr.filter{$0 % 2 == 0}
//    }
//    return []
//}
//
//
//higherOrderFunction(functionType: "reduce", arr: [1,2,5,3])
//
//
////Define an enumeration (enum) named CompassPoint
//enum CompassPoint {
//    case north
//    case south
//    case east
//    case west
//}
//
////Create an instance of a CompassPoint
//let northDirection = CompassPoint.north
//let directionTwo: CompassPoint = .south
//
//
//enum Hand: String {
//    case left
//    case right
//}
//
//enum Day: Int {
//    case monday = 1
//    case tuesday
//    case wednesday
//    case thursday
//    case friday
//    case saturday
//    case sunday
//}
////A Positive
////B Negative
//
//
//
//enum BloodType: String {
//    case A = "A"
//    case B = "B"
//    case O = "O"
//    case AB = "AB"
//}
//
//enum USCoin: Double {
//    case penny = 0.01
//    case nickel = 0.05
//    case dime = 0.10
//    case quarter = 0.25
//    case halfDollar = 0.50
//    case dollar = 1.00
//}
////Enums are types, just as Strings are
//
//let myCoinCollection: [USCoin] = [.penny, .dollar, .quarter]
//
//let myCoinCollection2: [USCoin: Int] = [.penny: 300,
//                                        .dollar: 204,
//                                        .quarter: 42]
//myCoinCollection2[.quarter]
//
//
//enum ErrorCode {
//    case badInput
//    case noNetwork
//    case fileNotFound
//}
//
//let error = ErrorCode.fileNotFound
//
//switch error {
//case .badInput:
//    print("Please re-enter your information.")
//case .noNetwork:
//    print("Please check your connection and try again.")
//case .fileNotFound:
//    print("Missing File. Please make sure your file exists at this location.")
//
//}
//
//
//let myHand = Hand.right
//
//switch myHand {
//case .left:
//    print("Left hand")
//case .right:
//    print("Right hand")
//}
//
//let myDay = Day.saturday
//
//switch myDay {
//case .monday, .tuesday, .wednesday, .thursday, .friday:
//    print("It's a weekday!")
//case .saturday, .sunday:
//    print("It's the weekend!")
//}
////Or usinng default
//switch myDay {
//case .saturday, .sunday:
//    print("It's the weekend!")
//default:
//    print("It's a weekday!")
//}
//
//let myType = BloodType.A
//
//switch myType {
//case .B:
//    print("You have type B")
//default:
//    print("You don't have type B")
//}
////Or using an if statement
//if myType == .B {
//    print("You have type B")
//} else {
//    print("You don't have type B")
//}
//
//let myCoin = USCoin.nickel
//
//switch myCoin {
//case .dime, .quarter, .halfDollar, .dollar:
//    print("This is worth at least $0.10")
//default:
//    print("Worth less than $0.10")
//}
//
////Raw value
//enum NYCBoro: String {
//    case queens = "Queens"
//    case brooklyn = "Brooklyn"
//    case manhattan = "Manhattan"
//    case bronx = "Bronx"
//    case statenIsland = "Staten Island"
//}
//
//let myBoro = NYCBoro.queens
////Access the raw value of an instance of an enum
//myBoro.rawValue
//
//let yourBoro = NYCBoro(rawValue: "Bronx")
//
////Redefine each of these to have a raw value
////Hand
////Day
////BloodType
////USCoin
//
//if let myCoin2 = USCoin(rawValue: 0.15) {
//    switch myCoin2 {
//    case .dime, .quarter, .halfDollar, .dollar:
//        print("This is worth at least $0.10")
//    default:
//        print("Worth less than $0.10")
//    }
//} else {
//    print("You can't make a coin like that!")
//}
//
//if let myCoin3 = USCoin(rawValue: 0.50) {
//    print(myCoin3.rawValue)
//}
//
//let myDay2 = Day.tuesday
//myDay2.rawValue
//
//enum Barcode {
//    case upc(Int, Int, Int, Int)
//    case qrCode(String)
//}
//
//let myBarcode = Barcode.upc(5, 9, 3, 0)
//let myBarcode2 = Barcode.qrCode("ABCDEFGHIJ")
//
//switch myBarcode {
//case .upc(let numberSystem, let manufacturer, let product, let check):
//    print("It's a upc code")
//    print(numberSystem, manufacturer, product, check)
//case .qrCode(let storedStr):
//    print("It's a qr code with a string of \(storedStr)")
//}
// */
//enum Marker: String {
//    case positive
//    case negative
//}
//enum Bloodtype {
//    case A(Marker)
//    case B(Marker)
//    case O(Marker)
//    case AB(Marker)
//}
//let myBloodtype = Bloodtype.A(.positive)
//let anotherType = Bloodtype.O(.negative)
//
////Looking for O+
//
//switch anotherType {
//case .O(let marker):
//    switch marker {
//    case .positive:
//        print("It's a match!")
//    case .negative:
//        print("It's not a match, but it is type O")
//    }
//default:
//    print("Not type O")
//}
//
//enum HigherOrderedFunction {
//    case filter((Int) -> Bool)
//    case map((Int) -> Int)
//    case sort((Int, Int) -> Bool)
//    case reduce(Int, (Int, Int) -> Int)
//}
//
//enum Solution {
//    case arr([Int])
//    case val(Int)
//}
//
//func apply(function: HigherOrderedFunction, to arr: [Int]) -> Solution {
//    switch function {
//    case .filter(let filterClosure):
//        return Solution.arr(arr.filter(filterClosure))
//    case .map(let mapClosure):
//        return Solution.arr(arr.map(mapClosure))
//    case .sort(let sortClosure):
//        return Solution.arr(arr.sorted(by: sortClosure))
//    case .reduce(let (startVal, reduceClosure)):
//        return Solution.val(arr.reduce(startVal, reduceClosure))
//    }
//}
//let inputArr = [1,5,2,56,1,5,2,54,3]
//
//apply(function: .sort(>), to: inputArr)
//print(apply(function: .map({$0 * 2}), to: inputArr))
//
//
//enum Color {
//    case blue, green, red
//    func printCurrentColor() {
//        print("My current color is ", terminator: "")
//        switch self {
//        case .blue:
//            print("blue")
//        case .green:
//            print("green")
//        case .red:
//            print("red")
//        }
//    }
//}
//
//enum Shape {
//    case square(side: Double)
//    case triangle(height: Double, width: Double)
//    case circle(raduis: Double)
//
//    func area() -> Double {
//        switch self {
//        case .square(let side):
//            return side * side
//        case .triangle(let height, let width):
//            return (width * height) / 2
//        case .circle(let radius):
//            return Double.pi * radius * radius
//        }
//    }
//}
//
//var myShape = Shape.triangle(height: 4.0, width: 3.0)
//myShape = .square(side: 8.0)
//print(myShape.area())
//
//
//enum MadScientist: String {
//    case rickSanchez = "Time to get riggity riggity wrecked son!"
//    case doctorWho
//}
//
//var scientist = MadScientist.rickSanchez
//
//switch scientist {
//case .rickSanchez:
//    print(scientist.rawValue)
//case .doctorWho:
//    print(scientist.rawValue)
//}

//You are given a CoinType enumeration which describes different coin values. Print the total value of the coins in the array moneyArray which contains tuples of type (quantity, CoinType).

enum CoinType: Int {
    case penny = 1
    case nickle = 5
    case dime = 10
    case quarter = 25
}

var moneyArray:[(Int,CoinType)] = [(10,.penny),
                                   (15,.nickle),
                                   (3,.quarter),
                                   (20,.penny),
                                   (3,.dime),
                                   (7,.quarter)]



var sum = 0
for (coinNumber, coin) in moneyArray {
    sum += coinNumber * coin.rawValue
}
print(sum)
// your code here


print(moneyArray.reduce(0){$0 + ($1.0 * $1.1.rawValue)})

moneyArray.reduce(0){(currentTotal: Int, currentTuple: (Int, CoinType)) -> Int in
    let coinNumber = currentTuple.0
    let coinValue = currentTuple.1.rawValue
    return currentTotal + (coinNumber * coinValue)
}
