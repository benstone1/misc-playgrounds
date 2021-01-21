//: Playground - noun: a place where people can play

import UIKit
/*
 var str = "Hello, playground"
 
 let closedRange = 1...5
 let openRange = 1..<5
 
 let doubleRange = 1.3..<5.0
 
 //Open Range (prints one to ten)
 for i in 1..<11 {
 //print(i)
 }
 //Closed Range (print one to eleven)
 for i in 1...11 {
 //print(i)
 }
 
 //Count down from ten to one
 for i in (2...10).reversed() {
 //print(i)
 }
 //where
 //count only even numbers between one and ten
 for i in 1..<10 where i % 2 == 0 {
 print(i)
 }
 
 //Print the first five elements in the fives times table
 //var product: Int
 //for i in 1..<6 {
 //    product = i * 5
 //    print("5 * \(i) = \(product)")
 //}
 
 var number = 3
 for i in 1..<13 {
 print("\(number) * \(i) = \(number * i)")
 }
 
 //Use _ if not using the varaible
 //Print "Hi there!" six times
 for _ in 0..<5 {
 print("Hi there!")
 }
 
 //3 ^ 10

let base = 2
let power = 3

var product = 1
for _ in 0..<power {
    product *= base
}
print(product)

let myTuple = (4,2,5)
//Cannot iterate over a tuple

//Using where
for i in 1...100 where i % 6 == 0 {
    print(i)
}

var tempIsIdeal = true
//Using an if statement
for i in 1...100 {
    var firstForLoopVar = 5
    if i % 10 == 5 {
        var ifStatementVar = 10
        if tempIsIdeal {
            print("And the temp is nice!")
        }
        print(i)
    }
}
//Use Control-i to fix indentation errors

var i = 0 // initialize
while i < 10 { // condition
    print(i)  // body code
    i += 1	// increment iterator
}

var number = 100
while number > 1 {
    number /= 2
    print(number)
}

var inputIsValid = false
while !inputIsValid {
    //get validInput
    //inputIsValid = true
}


//Infinite Loop

while true {
    print("Hello")
}

number = 10
while number > 1 {
    number /= 2
    print(number)
}

var doubleNumber: Double = 20.0
while doubleNumber > 0.0 {
    doubleNumber /= 2.0
    
    print(doubleNumber)
}


//Always executes at least once
var i = 0
repeat {
    print(i)
    i += 1
} while false


//continue
for i in 0..<10 {
    if i > 4 && i < 8 {
        print("we don't like the value \(i)")
        continue
    }
    print("we like the value \(i)")
}
 

var i = 5
while i < 10 {
    if i == 6 {
        print("i is 6")
        i += 1
        continue
    }
    print("i is not 6")
    i += 1
}

var shields = 5
var blastersOverheating = false
var blasterFireCount = 0

while shields > 0 {
    if blastersOverheating {
        print("Blasters are overheated!  Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
    }
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    // Fire blasters!
    print("Fire blasters!")
    // note the version in the book used ++
    blasterFireCount += 1
}


//break
for i in 0..<1000 where i % 11 == 0 {
    if i == 121 {
        "121 is a muplitple of 11"
        break
    }
    print(i)
}

var i = 0
while true {
    if i == 100 {
        break
    }
    print(i)
    i += 1
}



var shields = 5
var blastersOverheating = false
var blasterFireCount = 0
var spaceDemonsDestroyed = 0

while shields > 0 {
    
    if spaceDemonsDestroyed == 500 {
        print("You beat the game!")
        break
    }
    
    if blastersOverheating {
        print("Blasters are overheated! Cooldown initiated.")
        sleep(5)
        print("Blasters ready to fire")
        sleep(1)
        blastersOverheating = false
        blasterFireCount = 0
        continue
    }
    
    if blasterFireCount > 100 {
        blastersOverheating = true
        continue
    }
    
    // Fire blasters!
    print("Fire blasters!")
    blasterFireCount += 1
    spaceDemonsDestroyed += 1
}


print("hey","there", terminator: "ENDLINE")


print("a","b","c", separator: "_---|||---_")

for i in 1...5 {
    for j in 1...5 {
        print("i is: \(i), j is: \(j)", terminator: " ")
    }
    print()
}



outer: for i in 1...5 {
    print("i\(i) :", terminator: " ")
    
    inner: for j in 1...5 {
        if i == j {
            // uncomment for "outer"
            print("")
            
            // toggle outer on and off
            continue outer
        }
        print("j\(j)", terminator: " ")
    }
    print("")
}
*/

//Check if a number is positive
let number = 434
let isPositive = number > 0

var n = 5
for _ in 0..<n {
    for _ in 0..<n {
        print("*", terminator: " ")
    }
    print()
}
print()
for _ in 0..<n {
    var strToPrint = ""
    for _ in 0..<n {
        strToPrint += "* "
    }
    //print(String(repeating: "* ", count: n))
    print(strToPrint)
}
