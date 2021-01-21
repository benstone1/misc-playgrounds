//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

protocol Cook {
    func makingFood()
}

struct Mom: Cook {
    func makingFood() {
        print("Pizza coming soon!")
    }
}

var mom = Mom()
mom.makingFood() // "Pizza coming soon!"

struct Child {
    var delegate: Cook? // delegate = someone with special skills
}

var junior = Child()
junior.delegate = mom

junior.delegate?.makingFood()


protocol Vehicle {
    var numberOfWheels: Int { get set }
    var isDamaged: Bool { get set }
}

protocol MechanicDelegate {
    func fixVehicle()
}

class Mechanic: MechanicDelegate {
    var vehicle: Vehicle?
    
    func fixVehicle() {
        vehicle?.isDamaged = false
        chargeForWork()
    }
    private func chargeForWork() {
        switch vehicle {
        case is Car:
            print("That'll be $200")
        case is Motorcycle:
            print("That'll be $100")
        default:
            print("Default price")
        }
    }
}

class Car: Vehicle {
    var make: String
    var numberOfDoors: Int
    var numberOfWheels: Int
    var isDamaged: Bool = false
    
    var mechanicDelegate: MechanicDelegate?
    
    init(make: String, doors: Int, wheels: Int) {
        self.make = make
        self.numberOfDoors = doors
        self.numberOfWheels = wheels
    }
}

class Motorcycle: Vehicle {
    var numberOfWheels: Int = 2
    var isDamaged: Bool = false
}

var harryTheHonda = Car(make: "Honda", doors: 5, wheels: 4)
harryTheHonda.isDamaged = true

var jasonStatham = Mechanic()

harryTheHonda.mechanicDelegate = jasonStatham
jasonStatham.vehicle = harryTheHonda

print("harry is damaged: ", harryTheHonda.isDamaged)

// get the delegate to fix the vehicle
harryTheHonda.mechanicDelegate?.fixVehicle()

print("harry is damaged: ", harryTheHonda.isDamaged)

