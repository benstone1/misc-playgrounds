//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"




class TwoDPoint {
    var x: Double
    var y: Double
    init(x: Double, y: Double) {
        self.x = x
        self.y = y
    }
    convenience init() {
        self.init(x: 0, y: 0)
    }
    convenience init(x: Double) {
        self.init(x: x, y: 0)
    }
    convenience init(y: Double) {
        self.init(x: 0, y: y)
    }
}

class ThreeDPoint: TwoDPoint {
    var z: Double
    init(x: Double, y: Double, z: Double) {
        self.z = z
        super.init(x: x, y: y)
    }
    convenience override init(x: Double, y: Double) {
        self.init(x: x, y: y, z: 0)
    }
}

let myPoint = TwoDPoint()

class Person {
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    
    init(name: String, born: Int, died: Int?) {
        self.name = name
        self.yearBorn = born
        self.yearDied = died
    }
}

class Musician: Person {
    var instrument: String
    init(name: String, born: Int, died: Int?, instrument: String) {
        self.instrument = instrument
        super.init(name: name, born: born, died: died)
    }
}



class Animal {
    var numberOfLegs: Int
    init?(numberOfLegs: Int) {
        guard numberOfLegs > -1 else {
            return nil
        }
        self.numberOfLegs = numberOfLegs
    }
}

enum Color {
    case blue, green, red, error
    init(c: Character) {
        switch String(c).lowercased() {
        case "b":
            self = .blue
        case "g":
            self = .green
        case "r":
            self = .red
        default:
            self = .error
        }
    }
}

let myColor = Color(c: "b")

enum GameState {
    case inProgress, victory, defeat
}

struct GameBrain {
    var maxNumberOfGuesses: Int
    var correctNum: Int
    var currentNumberOfGuesses = 0
    mutating func guess(number: Int) -> GameState {
        currentNumberOfGuesses += 1
        if number == correctNum {
            return .victory
        }
        if currentNumberOfGuesses >= maxNumberOfGuesses {
            return .defeat
        }
        return .inProgress
    }
}

var game = GameBrain(maxNumberOfGuesses: 10, correctNum: 5, currentNumberOfGuesses: 0)

game.guess(number: 10)
game.guess(number: 5)

