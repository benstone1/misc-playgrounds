//: Playground - noun: a place where people can play

import UIKit
/*
var str = "Hello, playground"

class Seed {
    var plantName: String
    init(plantName: String) {
        self.plantName = plantName
    }
}

class Food {
    var calories: Int
    init(calories: Int) {
        self.calories = calories
    }
}



protocol FullyNamed {
    var fullName: String {get}
}

class SunflowerSeed: Plantable, Edible, FullyNamed {
    var plantName: String = "Sunflower"
    var fullName: String = "Sunflower Seed"
    var calories: Int
    init(calories: Int) {
        self.calories = calories
    }
}


struct Person: FullyNamed {
    var age: Int
    var fullName: String
    var occupation: String
}

class Student: FullyNamed {
    var gpa: Double
    var fullName: String
    init(gpa: Double, fullName: String) {
        self.gpa = gpa
        self.fullName = fullName
    }
}

enum TextColor: String, FullyNamed {
    case red = "Red"
    case green = "Green"
    case blue = "Blue"
    var fullName: String {
        return "I am " + self.rawValue
    }
}

struct Point {
    var x: Int
    var y: Int
}

protocol Movable {
    var currentPosition: Point {get}
    mutating func move(to: Point)
    mutating func moveStraightForTenSeconds() -> Point
}

//Conform to Movable
class Car: Movable{
    var currentPosition: Point
    var make: String = "Ford"
    func move(to newPoint: Point) {
        print("Our car is moving")
        self.currentPosition = newPoint
    }
    
    func moveStraightForTenSeconds() -> Point {
        print(self.make)
        let currentX = self.currentPosition.x
        let newPoint = Point(x: currentX + 10, y: self.currentPosition.y)
        self.move(to: newPoint)
        //self.currentPosition == newPoint is true
        return self.currentPosition
    }
    
    init(currentPosition: Point) {
        self.currentPosition = currentPosition
    }
    convenience init() {
        self.init(currentPosition: Point(x: 0, y: 0))
    }
}

struct Plane: Movable {
    var pilotName: String = "Otto"
    var currentPosition: Point = Point(x: 0, y: 0)
    mutating func move(to newPoint: Point) {
        print("The plane is moving!")
        self.currentPosition = newPoint
    }
    mutating func moveStraightForTenSeconds() -> Point {
        print("The plane is moving!")
        self.currentPosition = Point(x: self.currentPosition.x + 100, y: self.currentPosition.y)
        return currentPosition
    }
}


//var myCar = Car()
//myCar.currentPosition.x
//myCar.moveStraightForTenSeconds()
//var myPlane = Plane()
//
//var movableThings: [Movable] = []
//
//movableThings.append(myCar)
//movableThings.append(myPlane)


var fullyNamedArr: [FullyNamed] = []
var student = Student(gpa: 3.4, fullName: "Student A")
var person = Person(age: 40, fullName: "Jane", occupation: "Doctor")
var mySunflowerSeed = SunflowerSeed(calories: 2)

fullyNamedArr = [student, person, mySunflowerSeed]


protocol Plantable {
    var plantName: String {get}
}

protocol Edible {
    var calories: Int {get}
}


protocol FullyNamed {
    var fullName: String { get }
}

class Person: FullyNamed {
    var age: Int
    var occupation: String
    var fullName: String
    init(age: Int, occupation: String, fullName: String) {
        self.age = age
        self.occupation = occupation
        self.fullName = fullName
    }
}

class Student: Person, Edible, Plantable, CustomStringConvertible, Comparable {
    static func <(lhs: Student, rhs: Student) -> Bool {
        return lhs.idNumber < rhs.idNumber
    }
    
    static func ==(lhs: Student, rhs: Student) -> Bool {
        return lhs.idNumber == rhs.idNumber
    }
    
    var description: String {
        return "\(fullName): (age: \(age), job: \(occupation), gpa: \(gpa))"
    }
    var idNumber: Int
    var plantName: String = ""
    var calories: Int = 0
    var gpa: Double
    init(age: Int, occupation: String, fullName: String, gpa: Double, idNumber: Int) {
        self.gpa = gpa
        self.idNumber = idNumber
        super.init(age: age, occupation: occupation, fullName: fullName)
    }
}

protocol Titled: FullyNamed  {
    var title: String {get}
}

class Teacher: Titled {
    var title: String = "Mr."
    var fullName: String = "Ben Stone"
}

let chem101 = [
    Student(age: 17, occupation: "Student", fullName: "Tom", gpa: 1.0, idNumber: 4),
    Student(age: 19, occupation: "Mailroom", fullName: "Bart", gpa: 2.0, idNumber: 6),
    Student(age: 18, occupation: "Cafeteria", fullName: "Mary", gpa: 3.0, idNumber: 3)
]

for student in chem101 {
    print(student)
}

let studentOne = Student(age: 18, occupation: "Cafeteria", fullName: "Mary", gpa: 3.0, idNumber: 3)
let studentTwo = Student(age: 19, occupation: "Library", fullName: "Mary", gpa: 3.3, idNumber: 3)

print(chem101.sorted())

@objc protocol FullyNamed2 {
    var fullName: String {get}
    @objc optional func printName()
}

protocol PersonalAssistant {
    func organizeCalendar()
    func takeCalls() -> Bool
    func runErrands()
}

class Employer {
    var delegate: PersonalAssistant?
    func hirePersonalAssistant(_ assistant: PersonalAssistant) {
        self.delegate = assistant
    }
    func busyAtAMeeting() {
        if let delegate = self.delegate {
            if delegate.takeCalls() {
                print("My delegate is taking the call")
            } else {
                print("Calls going to voicemail")
            }
        } else {
            print("I have no assistant, so all my calls go to voicemail")
        }
    }
}

class Employee: PersonalAssistant {
    func organizeCalendar() {
        print("Organizing your calendar")
    }
    
    func takeCalls() -> Bool {
        print("Answering Calls")
        return true
    }
    
    func runErrands() {
        print("Off running some errands")
    }
    
    func greet() {
        print("Hi there, I'm your personal assistant")
    }
}

let boss = Employer()
boss.busyAtAMeeting()
let assistant = Employee()
assistant.greet()
boss.hirePersonalAssistant(assistant)
boss.busyAtAMeeting()

func findMyAssistant(employer: Employer) -> PersonalAssistant? {
    return employer.delegate
}
let assistantDict = [Int: PersonalAssistant]()


struct Pizza {
    
    let ingredients: [String]
    
}

protocol Pizzeria {
    func makePizza(ingredients: [String]) -> Pizza
    func makeMargherita() -> Pizza
}

extension Pizzeria {
    func makeMargherita() -> Pizza {
        return makePizza(ingredients: ["tomato", "mozzarella"])
    }
}

struct Lombardis: Pizzeria {
    func makePizza(ingredients: [String]) -> Pizza {
        return Pizza(ingredients: ingredients)
    }
    
    func makeMargherita() -> Pizza {
        return makePizza(ingredients: ["tomato", "basil", "mozzarella"])
    }
}
let lombardis1: Pizzeria = Lombardis()
let lombardis2: Lombardis = Lombardis()
lombardis1.makeMargherita().ingredients
lombardis2.makeMargherita().ingredients


protocol Image {
    var filename: String { get set }
    var filesize: Double { get }
    var mimetype: String { get }
    var height: Double { get }
    var width: Double { get }
    
    func save ()
    mutating func resize(width: Double, height: Double)
}

protocol Video {
    var framerate: Int { get }
    var resolution: Double { get }
}
struct Media: Image, Video {
    var filename: String
    var filesize: Double
    var mimetype: String
    var height: Double
    var width: Double
    var framerate: Int
    var resolution: Double
    
    func save() {
        
    }
    
    func resize(width: Double, height: Double) {

    }
}

let myMedia = Media(filename: "", filesize: 0.0, mimetype: "", height: 0.0, width: 0.0, framerate: 0, resolution: 0.0)
myMedia.resize(width: 2.4, height: 43)
*/
protocol BabySitterDelegate {
    func feedBaby()
    func playWithBaby()
    func giveBabyANap()
}

enum BabyState {
    case hungry
    case bored
    case sleepy
    static func getRandomState() -> BabyState {
        switch arc4random_uniform(3) {
        case 0:
            return .hungry
        case 1:
            return .bored
        case 2:
            return .sleepy
        default:
            return .sleepy
        }
    }
}

class Baby {
    var delegate: BabySitterDelegate?
    var state: BabyState = .hungry
    func getSitter(_ sitter: BabySitterDelegate) {
        self.delegate = sitter
    }
    func act() {
        if let sitter = self.delegate {
            switch state {
            case .hungry:
                sitter.feedBaby()
            case .bored:
                sitter.playWithBaby()
            case .sleepy:
                sitter.giveBabyANap()
            }
        }
        state = BabyState.getRandomState()
    }
}

class Teenager: BabySitterDelegate {
    func feedBaby() {
        print("Gonna get food for the baby and take some myself")
    }
    func playWithBaby() {
        print("Lets play Tony Hawk Pro Skater together")
    }
    func giveBabyANap() {
        print("Bedtime")
    }
}

class ProfessionalSitter: BabySitterDelegate {
    func feedBaby() {
        print("Giving baby nutritious food")
    }
    func playWithBaby() {
        print("Using educationally enriching materials")
    }
    func giveBabyANap() {
        print("Making bedroom optimal for naptime")
    }
}

let baby = Baby()
let teenager = Teenager()
let pro = ProfessionalSitter()
baby.getSitter(pro)
baby.act()
baby.act()
baby.act()
baby.act()
baby.act()
baby.act()
