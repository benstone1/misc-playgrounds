//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground" //String
var num = 8 //Int
var numCansBeZero = 0
var numsCanBeNegative = -4

num = 3

num

num = -3
num = 1

//Double
var myDouble = 4.2

//Bool (Short for Boolean)
var myBool = true
var myOtherBool = false


//String
var newString = "coding"

//Int
var myFavNumber = 68

//Double
var myNewDouble = 22.5

//Bool
var myNewBool = false

//Character

var myCharacter = "y"


//Type annotation
var myCharacter2: Character = "y"

//Declaring a new variable
var numberOfStudents: Int

//Assigning a variable (Initialize a variable)
numberOfStudents = 35

print(numberOfStudents)

//Declaring a constant
var pi: Double = 3.14159265358979
pi = 3
print(pi)


//Define constants that make sense as constants and not variables

let speedOfLight = 2.9 * pow(10.0, 8.0)
let electronDiscoveror = "JJ Thompson"
let earthOrbitsTheSun = true
let hoursInADay = 24
let numberBiologicalParents = 2

//Bools in detail

let numberOfPeople = 40
let numberOfChairs = 42

//let enoughChairsForEveryone = numberOfChairs > numberOfPeople

let enoughChairsForEveryone: Bool
enoughChairsForEveryone = numberOfChairs > numberOfPeople

//38 > 40
//Evaulates to false

var a = 3
var b = 6
var c = 7

a > b
a < b
a == b
a >= b
a <= b
a != b

//Combine Bools with AND (BOTH must be true)
true && true
false && true

(a == b) && numberOfPeople < numberOfChairs


//Combine Bools with OR (AT LEAST ONE must be true)
true || true
true || false
false || false

!(true)
!(false)

//Number Domains

//Whole Numbers (0, 1, 2, 3...inf)
//Integers (-inf...-3,-2,-1,0,1,2,3...inf)
//Rationals (Any number that can be made into a fraction)
//(1/2, 1/3, -3/4)

//Real Numbers
//pi, e + everything above

10 + 3
10 - 3
10 * 3
let quotient = 10/3
let remainder = 10%3

10.0 / 3.0

let numberOfPeople2 = 30
let peoplePerGroup2 = 4

let totalGroups = numberOfPeople2 / peoplePerGroup2
let peopleLeftOver = numberOfPeople2 % peoplePerGroup2


//Check if a number is even or odd by %2
5 % 2
10 % 2
-13 % 2
18 % 2

//Check if a number % something == 0 for divisibility
let sixIsFactorOfEighteen = 18 % 6 == 0

//Get the last digit of a number by modding by ten
let lastDigit = 23498 % 10

//Mod only works for Int



//Shorthand

var i = 10
i += 1 //Equivalent to i = i + 1
print(i)

let d1 = 1.1
let d2 = 1.1

if d1 == d2 {
    print("d1 and d2 are equal")
}

print("d1 + 0.1 is \(d1 + 0.1)")

if d1 + 0.1 == 1.2 {
    print("hello, out there.")
} else {
    print("d1 + 0.1 is not 1.2")
}

let firstNum = 4
let secondNum = 8.4

Double(firstNum) + secondNum
firstNum + Int(secondNum)

4 / 3.0

let doubleNum = 4.4

let numOne = 4.0 + 0.2
//let numTwo = 4.0 + 0.2
let equalityCheck = numOne == 4.2


let sampleNum = 0.2


//String Interpolation
print("This is some text, and the variable sampleNum which is \(sampleNum)")

//Q37
var numberOfFields: Int = 10
var wheatYield: Double = 42.5
var weatherWasGood: Bool = false
var finalYield = Double(numberOfFields) * wheatYield
if weatherWasGood {
    finalYield *= 1.5
}
print(finalYield)
//Q34
var finalsGrade = 2.0
var midtermGrade = 4.0
var projectGrade = 3.0

//totalGrade = 50% finalsGrade + 20% of midterm + 30% project
var totalGrade = 0.5 * finalsGrade + 0.2 * midtermGrade + 0.3 * projectGrade

//Q32
var inputNum = 13
var remainderWhenDividedByTwo = inputNum % 2
var numberIsEven = remainderWhenDividedByTwo == 0
print("It is \(numberIsEven) that \(inputNum) is even")


//Q35
var mealCost: Double = 16.96
var tip: Int = 20

//totalCost = (mealCost * tip (as percentage)) + mealCost
var totalCost: Double = (mealCost * Double(tip) / 100) + mealCost


Int.max &+ 1

//x || y || (z == 1)
