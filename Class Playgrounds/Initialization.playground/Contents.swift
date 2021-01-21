//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"

//Classes and Structs review

//Classes:
class Person {
    var name: String = "Unnamed Person"
    var age: Int? //= nil
}
//No memberwise initializer; either give all properties an initial value, or write your own initializer
let newPerson = Person()
//Get Values
newPerson.age
//Set Value
newPerson.age = 35
newPerson.name = "Steve"

//A reference type
let alsoNewPerson = newPerson
alsoNewPerson.name = "K"
alsoNewPerson.name
newPerson.name
//Create another way of talking about the same object


//Support Inheritence

class Astronaut: Person {
    var daysInSpace: Int = 0
}
let spaceGal = Astronaut()
spaceGal.daysInSpace

//Structs:
struct Human {
    var name: String
    var age: Int
}
//Memberwise initializer given by default
var newHuman = Human(name: "Joe", age: 49)
//Get values
newHuman.age
//Set values
newHuman.age = 50


//A value type
var newHumanCopy = newHuman
newHumanCopy.name = "K"
newHumanCopy.name
newHuman.name
//Copy all the properties of newHuman into a totally new Object named newHumanCopy

//Do not support inheritence

//Method is a function defined in a class

//Instance method

enum Color {
    case red, green, blue
}

class Balloon {
    static let bestBalloon = Balloon()
    static func balloonFact() {
        print("Balloon are often filled with Helium")
    }
    var color: Color = .red
    var isFilled: Bool = false
    //Change an instance of a balloon to a new color and return the old color
    func changeColor(to newColor: Color) -> Color {
        let oldColor = self.color
        self.color = newColor
        return oldColor
    }
}


let myBalloon = Balloon()
let colorBeforeChanging = myBalloon.changeColor(to: .blue)
print("You have changed a \(colorBeforeChanging) balloon to a \(myBalloon.color) balloon")

//Class property
Int.max
Double.pi
Float.pi
Balloon.bestBalloon.color

//Class method
Balloon.balloonFact()


class Fahrenheit {
    var temperature: Double
    init(temperature: Double) {
        //print("You just made a new Fahrenheit")
        self.temperature = temperature
    }
}
let myTemp = Fahrenheit(temperature: 50)

//Initializers and Inheritence

class Person {
    var name: String
    var yearBorn: Int
    var yearDied: Int?
    var description: String {
        return "\(name) was born in \(yearBorn)"
    }
    func printDescription() {
        print(self.description)
    }
    
    init(name: String, yearBorn: Int, yearDied: Int?) {
        self.name = name
        self.yearBorn = yearBorn
        self.yearDied = yearDied
    }
    init(name: String, yearBorn: Int) {
        print("In class Person making someone with the name \(name)")
        self.name = name
        self.yearBorn = yearBorn
        //self.yearDied = nil
    }
}

let newPerson = Person(name: "Bill", yearBorn: 1974, yearDied: nil)
//let personTwo = Person(name: "Kacey", yearBorn: 1990)

class Musician: Person {
    var instrument: String
    init(name: String, yearBorn: Int, instrument: String) {
        print("In class Musician setting the instrument to \(instrument)")
        self.instrument = instrument
        super.init(name: name, yearBorn: yearBorn)
    }
    
}

class Beatle: Musician {
    var songsComposed: [String]
    init(songsComposed: [String], name: String, yearBorn: Int, instrument: String) {
        print("In class Beatle looking at the songs \(songsComposed)")
        self.songsComposed = songsComposed
        super.init(name: name, yearBorn: yearBorn, instrument: instrument)
    }
}
let ringo = Beatle(songsComposed: ["Hey Jude", "Yesterday"], name: "Ringo Starr", yearBorn: 1940, instrument: "Drums")

ringo.description

//let ringo = Musician/(name: "Ringo Starr", yearBorn: 1940, instrument: "Drums")
*/

class TwoDPoint {
    var x: Double
    var y: Double
    //Designated Initializer
    init(x: Double, y: Double) {
        print("Making a point with a designated initializer!")
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
    convenience init(str: String) {
        switch str {
        case "Origin":
            self.init()
        case "X-axis":
            self.init(x: Double(arc4random_uniform(10)), y: 0)
        case "Y-axis":
            self.init(x: 0, y: Double(arc4random_uniform(10)))
        default:
            self.init(x: 0)
        }
    }
}

func doAThing() -> String {
    return "bleh"
}

func doAThing() -> String? {
    return "eeee"
}

let a: String = doAThing()
let b: String? = doAThing()

//let myPoint = TwoDPoint(x: 4.5, y: 5.2)
//let myPoint2 = TwoDPoint()
//let myPoint3 = TwoDPoint(x: 10)
//let myPoint4 = TwoDPoint(y: 4)

//let originPoint = TwoDPoint(str: "Origin")

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

let myPoint = ThreeDPoint(x: 4, y: 1, z: 10)
let myPoint2 = ThreeDPoint()


class Animal {
    var numberOfLegs: Int {
        willSet {
            print("I am about to change the number of legs to \(newValue)")
        }
        didSet {
            print("I changed the number of legs from \(oldValue)")
        }
    }
    init?(numberOfLegs: Int) {
        guard numberOfLegs >= 0 else {
            return nil
        }
        self.numberOfLegs = numberOfLegs
    }
}

let octopus = Animal(numberOfLegs: 8)!
octopus.numberOfLegs = 6
let cow = Animal(numberOfLegs: 4)
let snake = Animal(numberOfLegs: 0)
let weirdThing = Animal(numberOfLegs: -500)

enum BloodType: String {
    case A, O, AB, B
}

let myType = BloodType(rawValue: "Blrop")

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

"sdlfjhsdf".components(separatedBy: " ")


