//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Person {
    var name: String
    init(name: String) {
        self.name = name
        
    }
}


var myPerson: Person?
myPerson = Person(name: "abe")
myPerson = nil

//class Apartment {
//    let name: String
//    var tenant: Person?
//    init(name: String) {
//        self.name = name
//        print("Initialized apartment \(self.name)")
//    }
//    deinit {
//        print("Deinitializing person \(self.name)")
//    }
//}
//
//class Person {
//    let name: String
//    var apartment: Apartment?
//    init(name: String) {
//        self.name = name
//        print("Initialized person \(self.name)")
//    }
//    deinit {
//        print("Deinitializing person \(self.name)")
//    }
//}
//
//
//var john: Person?
//var unit4A: Apartment?
//
//john = Person(name: "John Appleseed")
//unit4A = Apartment(name: "Unit 4A")
//
//john!.apartment = unit4A
//unit4A!.tenant = john
//
//john = nil
//unit4A = nil

