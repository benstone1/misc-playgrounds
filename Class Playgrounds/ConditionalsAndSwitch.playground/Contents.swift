////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
//let primate = "Ape"
//let equid = "Zebra"
//let cold = 32
//let ideal = 75
//let hot = 90
//var currentTemp = 100
//
//currentTemp == ideal
//cold < hot
//hot >= currentTemp
//
////primate > equid
//"Apeajdskfjkdf" > "Zebra"
//"a" > "A"
//
//
//(currentTemp < hot) && (currentTemp > cold)
////65 < 90 && 65 > 32
//// true   &&  true
////true
//
//
//
//abs(currentTemp - ideal) <= 5
//
//var temperatureInFahrenheit = 60
//
//var mathExpression = 433 
//
////if temperatureInFahrenheit <= 32 {
////    print("It's very cold. Consider wearing a scarf.")
////} else {
////    print("It's not that cold")
////}
//
////CANT START WITH AN ELSE
///*
//else {
//    print("hi")
//}
//*/
////If conditions can ONLY take Bools or things that evaluate to a Bool
//currentTemp = 100
//
//var tempIsIdeal = (currentTemp >= ideal - 5 && currentTemp <= ideal + 5)
//
//
//print(currentTemp)
//
//var weatherMessage = tempIsIdeal ? "It's nice out" : "It's not so nice out"
//
//print(weatherMessage)
//
//var weatherMessage2: String
//
//
//
//weatherMessage2 = tempIsIdeal ? "It's nice out" : "It's not so nice out"
//
//
//var weatherMessage3: String
//if tempIsIdeal {
//    weatherMessage3 = "It's nice out"
//} else {
//    weatherMessage3 = "It's not so nice out"
//}
//
//temperatureInFahrenheit = 90
//if temperatureInFahrenheit <= 32 {
//    print("It's very cold. Consider wearing a scarf.")
//} else if temperatureInFahrenheit >= 86 {
//    print("It's really warm. Don't forget to wear sunscreen.")
//} else {
//    print("It's not that cold. Wear a t-shirt.")
//}
//
//
//var myNum = 3
//if myNum > 6 {
//    print("myNum is greater than 6")
//} else if myNum > 7 {
//    print("myNum is greater than 7")
//} else {
//    print("myNum is equal to or less than 6")
//}
//
//temperatureInFahrenheit = 85
//var ownsSweater = false
//if temperatureInFahrenheit < 60 {
//    if ownsSweater {
//        print("Put on your sweater!")
//    } else {
//        print("You should get a sweater!")
//    }
//} else if temperatureInFahrenheit > 80 {
//    if ownsSweater {
//        print("Make sure not to wear your sweater!")
//    } else {
//        print("No need to buy a sweater")
//    }
//} else {
//    print("If you have a sweater, up to you what to do with it.")
//}
//
//if currentTemp < hot && currentTemp > cold {
//    print("Today's current temp of \(currentTemp) is rather warm folks!")
//}
//
//currentTemp = 100
//if currentTemp > hot || currentTemp < cold {
//    print("Todays current temp of \(currentTemp) is rather extreme folks! Dress accordingly")
//} else {
//    print("Todays current temp of \(currentTemp) is not that bad! Enjoy the day folks.")
//}
//
//
//if currentTemp <= ideal + 5 && currentTemp >= ideal - 5 {
//    print("the weather is great today because the temperature is \(currentTemp)")
//}
//else {
//    print("this weather is not ideal because the temperature is \(currentTemp)")
//}



let meal = "Second breakfast"

switch meal {
case "breakfast":
    print("Enjoy your breakfast")
case "lunch":
    print("Enjoy lunch")
case "dinner":
    print("Have a nice dinner")
default:
    print("Whatever meal you are having, hope it's good")
}

let strikes = 0
switch strikes {
case 0:
    print("Up to bat")
case 1:
    print("One strike!")
case 2:
    print("Two strikes!")
case 3:
    print("You're out!")
default:
    break
    //print("How can you have \(strikes) strikes!?")
}

let tempIsIdeal = false
switch tempIsIdeal {
case true:
    print("Temp is ideal")
case false:
    print("Temp is not ideal")
}

var temperatureInFahrenheit = 86
if temperatureInFahrenheit == 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit == 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}

switch temperatureInFahrenheit {
case Int.min...32:
    print("It's very cold. Consider wearing a scarf.")
case 86...Int.max:
    print("It's really warm. Don't forget to wear sunscreen.")
default:
    print("It's not that cold. Wear a t-shirt.")
}

let integerToDescribe = 5
var description = "The number \(integerToDescribe) is"

switch integerToDescribe {
case 2, 3, 5, 7, 11, 13, 17, 19:
    description += " a prime number, and also"
    fallthrough
//case 10, 20, 30, 40, 50:
//    description += " a multiple of ten"
//    fallthrough
default:
    description += " an integer."
}
print(description)

if integerToDescribe > 2, temperatureInFahrenheit == 86 {
    print("Both are true")
}

//Range
//CountableRange
let fourToTenOpen = 4..<10
//CountableClosedRange
let fourToTenClosed = 4...10


let approximateCount = 234
let countedThings = "moons orbiting Saturn"
var naturalCount: String
switch approximateCount {
case 0:
    naturalCount = "no"
case 1..<5:
    naturalCount = "a few"
case 5..<12:
    naturalCount = "several"
case 12..<100:
    naturalCount = "dozens of"
case 100..<1000:
    naturalCount = "hundreds of"
default:
    naturalCount = "many"
}
print("There are \(naturalCount) \(countedThings).")
// Prints "There are dozens of moons orbiting Saturn."

temperatureInFahrenheit = 90
if temperatureInFahrenheit <= 32 {
    print("It's very cold. Consider wearing a scarf.")
} else if temperatureInFahrenheit >= 86 {
    print("It's really warm. Don't forget to wear sunscreen.")
} else {
    print("It's not that cold. Wear a t-shirt.")
}
// Prints "It's really warm. Don't forget to wear sunscreen."

switch temperatureInFahrenheit {
case _ where temperatureInFahrenheit > 48:
    print("temp is more than 48")
default:
    break
}

//// independent constants
//let name = "Agnes"
//let age = 24
//let zipcode = 11106
//
//// one tuple agnesInfo now contains a list of values
//var agnesInfo = (name: name, age: age, zip: zipcode)
//
//let hollyInfo = ("Holly", 33, "10301") // can be built from literals; note the type of zip

let agnesInfo = ("Agnes", 24, 11106)
let hollyInfo = ("Holly", 33, 10301)
let kaiInfo = ("Kai", 18, 11106)

// because personInfo is a var we can assign it any of the constants above
var personInfo = agnesInfo

switch personInfo {
case (_, 0..<30, 10300...10399):
    print("\(personInfo.0) is young and lives on Staten Island")
case (_, 0..<30, 11100...11199):
    print("\(personInfo.0) is young and lives in LIC")
case (_, 0..<30, _):
    print("\(personInfo.0) is young and we don't know where they live")
case (_, _, 10000...14999):
    print("\(personInfo.0) lives in New York State")
default:
    print("We can't say anything interesting about \(personInfo.0)")
}
let temp = 8
//_ is a wildcard operator; it matches with everything
switch temp {
case _:
    print("It's a temp, alright")
}

if case 0..<10 = temp {
    print("temp is between 0 and 10")
}

var rand = 23
var int8Num: Int8 = 5
var combined = int8Num + rand
print(combined)

var sampleNum: Double
sampleNum = 4.7

let sampleNumAsInt = Int(sampleNum)
let backToDouble = Double(sampleNumAsInt)

let sampleNumIsWholeNumber = sampleNum == backToDouble

//let sampleNumIsWholeNumber = Double(Int(sampleNum)) == sampleNum



let testNum: Double = 3.0

let numAsInt = Int(testNum)

let numConvertedBackToDouble = Double(numAsInt)

numConvertedBackToDouble == testNum


var myPoint: (Double, Double)
myPoint = (4,2)


switch myPoint {
case (0..<Double.infinity, 0..<Double.infinity):
    print("Q1")
case let (x,y) where x < 0 && abs(y) == y:
    print("Q1")
case (-Double.infinity..<0, 0..<Double.infinity):
    print("Q2")
case let (a,b) where abs(a) != a && abs(b) == b:
    print(a)
    print("Q2")
default:
    break
}


let pAndQ: (Bool, Bool)
pAndQ = (true, false)


switch pAndQ {
case (true, false):
    print("|| works")
case (false, true):
    print("|| works")
case (true, true):
    print("|| and && both work")
case (false, false):
    print("Neither works")
}

let pAndQAndR: (Bool, Bool, Bool) = (true, false, true)

switch pAndQAndR {
case (true, true, true):
    print("And and Or work")
case (false, false, false):
    print("Nothing works")
default:
    print("Or works")
}


let firstName = "Ph"
let lastName: String

if firstName == "Peter" {
    lastName = "Gabriel"
} else if firstName == "Phil" {
    lastName = "Collins"
} else {
    lastName = "Unknown"
}
let fullName = firstName + " " + lastName


let num = 2.0



if num is Int {
    
    print("\(num) is a whole number")
    
} else {
    
    print("\(num) is not a whole number")
    
}


