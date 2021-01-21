//: Playground - noun: a place where people can play

import UIKit

//let score = 88
//
//switch score {
//case 0..<60:
//    print("Fail")
//default:
//    print("Pass")
//}
//
//var index = 0
//while index < str.characters.count {
//    print(str[str.index(str.startIndex, offsetBy: index)])
//    index += 1
//}

//
//func outputSampler(intChanger: (Int) -> Int, sampleValue: Int) -> Int {
//    return intChanger(sampleValue)
//}
//
//print(outputSampler(intChanger: {(a) in return a * a}, sampleValue: 4))
//
//var completionHandlers: [() -> Void] = []
//
//func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
//    completionHandlers.append(completionHandler)
//}


func interpreter(_ prog: String) -> String {
    var finalStr = ""
    var currentASCII = 0
    for c in prog.characters {
        if c == "+" {
            switch currentASCII {
            case 255:
                currentASCII = 0
            default:
                currentASCII += 1
            }
        } else if c == "." {
            finalStr += String(describing: (UnicodeScalar(currentASCII)!))
        }
    }
    return finalStr
}

func findOutlier(_ array: [Int]) -> Int {
    return array.filter{$0%2==0}.count == 1 ? array.filter{$0%2==0}[0] : array.filter{$0%2==1}[0]
}

import Foundation

class kata_dartboard {
    
    struct PolarCoordinate {
        var theta: Double
        var radius: Double
        init(cartesianX: Double, cartesianY:Double) {
            var angle = atan(cartesianY/cartesianX)
            switch (cartesianX, cartesianY) {
            case _ where cartesianX > 0 && cartesianY > 0:  //Q1
                break
            case  _ where cartesianX < 0 && cartesianY > 0: //Q2
                angle = angle + Double.pi
            case _ where cartesianX < 0 && cartesianY < 0:  //Q3
                angle = angle + Double.pi
            case _ where cartesianX > 0 && cartesianY < 0:  //Q4
                angle = angle + (Double.pi * 2)
            default:
                break
            }
            self.theta = angle
            self.radius = sqrt(pow(cartesianX, 2) + pow(cartesianY,2))
        }
    }
    
    func Throw(dart: (x: Double, y: Double)) -> String {
        let polarCoord = PolarCoordinate(cartesianX: dart.x, cartesianY: dart.y)
        print(polarCoord.radius)
        print(polarCoord.theta)
        let multiplier: String
        switch polarCoord.radius {
        case 0..<RadiusConstants.bullsEye:
            return "DB"
        case RadiusConstants.bullsEye..<RadiusConstants.bull:
            return "SB"
        case RadiusConstants.bull..<RadiusConstants.tripleRingInnerCircle:
            multiplier = ""
        case RadiusConstants.tripleRingInnerCircle..<RadiusConstants.tripleRingOuterCircle:
            multiplier = "T"
        case RadiusConstants.tripleRingOuterCircle..<RadiusConstants.doubleRingInnerCircle:
            multiplier = ""
        case RadiusConstants.doubleRingInnerCircle..<RadiusConstants.doubleRingOuterCircle:
            multiplier = "D"
        default:
            return "X"
        }
        let points = pointInSector(theta: Decimal(polarCoord.theta))
        return "\(multiplier)\(points)"
    }
    
    func pointInSector(theta: Decimal) -> Int {
        let values = [13,4,18,1,20,5,12,9,14,11,8,16,7,19,3,17,2,15,10] //Points in sectors starting wtih 13
        let startingAngleStartTheta = Decimal.pi * 2 / 40.0
        let startingAngleEndTheta = Decimal.pi * 2 / 20 + Decimal.pi * 2 / 40
        for sector in 0..<19 {
            let offset = Decimal.pi * 2 / 20 * Decimal(sector)
            let currentSectorRange = startingAngleStartTheta + offset..<startingAngleEndTheta + offset
            if currentSectorRange.contains(theta) {
                print(currentSectorRange)
                return values[sector]
            }
        }
        return 6 //6 not included in "values" because it spans 0..<2pi/40 adn 2pi-pi/40..<2pi
    }
    
    struct RadiusConstants {
        static let bullsEye = 12.7 / 2.0
        static let bull = 31.8 / 2.0
        static let tripleRingInnerCircle = 198 / 2.0
        static let tripleRingOuterCircle = 214 / 2.0
        static let doubleRingInnerCircle = 324 / 2.0
        static let doubleRingOuterCircle = 340 / 2.0
    }
    
}
func rotate(_ str: String) -> String {
    return String(str[str.index(before: str.endIndex)]) + str[str.startIndex..<str.index(str.startIndex, offsetBy: str.characters.count - 1)]
}

extension Character {
    var isOpenBrace: Bool {
        return self == "(" || self == "{" || self == "["
    }
    func closes(_ c: Character) -> Bool {
        switch self {
        case "(":
            return c == ")"
        case "{":
            return c == "}"
        case "[":
            return c == "]"
        default:
            return false
        }
    }
}

func validBraces(_ string:String) -> Bool { //Function that takes a string and returns a Bool
    
    //Instantiate an Array of Characters and assign it to the variable stack
    var stack = [Character]()
    
    for c in string.characters {
        
        if c.isOpenBrace { //Separate extension written above
            stack.append(c)
        } else {
            guard let last = stack.popLast() else {return false}
            if !last.closes(c) {
                print(last)
                print(c)
                return false
            }
        }
    }
    return true
}

var a = 0
var b = 0
let closure = { [a] in
    print(a, b)
}

a = 10
b = 10
closure()

/*
The closure captures the value of a on line 171
*/