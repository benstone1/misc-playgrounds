//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
//var temperature: Double = 76

//if my temperature meter is off, temp is zero

//temperature = 0

//Zero is imperfect, because now we can't measure temps that are actually zero

//Optionals
var temperature: Double? = 76
//var temperature: Optional<Double> = 76 Dont use this syntax
temperature = nil
temperature = 78
//var arrOfInts: Array<Int>
var arrOfInts: [Int]

//0 and nil are totally different from each other

//Force unwrapping works when the value is not nil
temperature! + 4

temperature = nil
temperature = 40
//Force unwrapping nil causes a runtime crash
//temperature! + 4

//To the value of an optional, you need to unwrap it
//temperature = 75

//Unwrapping method #1: Check if variable != nil
if temperature != nil {
    print("The temperature reading today is", temperature!)
    let tempIsIdeal = temperature! > 70 && temperature! < 85
    print("And it is \(tempIsIdeal) that it's nice out")
} else {
    print("The thermometer is turned off")
}

//Make three more variables of an optional type
var namesOfKids: [String?] = [nil, nil, "dsf"]
var TVChannel: Int?
//is the same as var TVChannel: Int? = nil

var girlfriendsName: String? = nil
var balance: Double? = 9_340.32


var bookTitle: String = "The Hobbit"
var alternateTitle: String?
alternateTitle = "There and Back Again"
print(bookTitle, alternateTitle)

alternateTitle = bookTitle // 😺 this works
print(alternateTitle)

bookTitle = alternateTitle // 💥 this doesn't

var bookTitle: String = "The Hobbit"
var secondTitle: String?
var author: String = "J.R.R. Tolkien"
var coAuthor: String?

secondTitle = "There and Back Again"
//secondTitle = nil

//Print the full title by checking for nil and force unwrapping (M1)
print("Method One (Force unwrap)")
if secondTitle != nil {
    print("Full title: \(bookTitle) or \(secondTitle!)")
} else {
    print("Full title: \(bookTitle)")
}
//Use method two!
print("Method Two (Optional Binding)")
if let safeSecondTitle = secondTitle {
    //safeSecondTitle is a String (not an optional String)
    print("Full title: \(bookTitle) or \(safeSecondTitle)")
} else {
    print("Full title: \(bookTitle)")
}

//If there are two authors, print both.  If there is just one, print it
coAuthor = "BOB"
if let coAuthor = coAuthor {
    print("Author is: \(author) and coAuthor is: \(coAuthor)")
} else {
    print("Author is: \(author)")
}

//Long form binding (Don't actually write this)
if coAuthor != nil {
    let safeCoAuther: String = coAuthor!
    print("Author is: \(author) and coAuthor is: \(safeCoAuther)")
} else {
    print("Author is: \(author)")
}


var bookReviewCount: Int?
var avgStarRating: Double?
var bookTitle: String = "The Hobbit"

bookReviewCount = 28
avgStarRating = 3.7

if let count = bookReviewCount,
    let rating = avgStarRating {
    if (rating > 3 && count > 5) {
        print("\(bookTitle): \(rating) stars")
    }
    else {
        print("\(bookTitle)")
    }
} else {
    print("\(bookTitle)")
}

var bookEndorsement: String?

if let bookEndorsement = bookEndorsement {
    print("Critics say: \(bookEndorsement)")
} else {
    print("No endorsements yet")
}


var firstName: String?
var middleIninital: Character?
var lastName: String?

firstName = "Ben"
middleIninital = "H"
lastName = "Stone"
//Nested if lets
if let first = firstName {
    print("First name: \(first)")
    if let middle = middleIninital {
        print("Middle initial: \(middle)")
        if let last = lastName {
            print("Last name: \(last)")
        }
    }
}

if let first = firstName, let middle = middleIninital,  let last = lastName {
    print("\(first) \(middle). \(last)")
}

var myArr = [1,4,2,9]
var currentIndex = 0

var myArr = [4,2,9,3]
let target = 2

for num in myArr {
    if num == target {
        print("\(target) is here!")
        break
    }
}

for num in myArr {
    guard num != target else {
        print("\(target) is here!")
        break
    }
    
    print("the number \(num) is not equal to \(target)")
}

var arrOfArrs = [[1,4],[4,3,1],[],[3,5,1]]

for arr in arrOfArrs {
    guard arr.count > 0 else {
        continue
    }
    print(arr[0])
}

for arr in arrOfArrs where arr.count > 0 {
    print(arr[0])
}

var tempRecordings: [Double?] = [78, nil, 85, 77, nil, 80]
for temp in tempRecordings {
    guard let validTemp = temp else {
        continue
    }
    let tempIsIdeal = validTemp > 70 && validTemp < 80
    print("It is \(tempIsIdeal) that the reading \(validTemp) is ideal")
}


var myArr: [Int] = []

var userInput = "13"

if var myInt = Int(userInput) {
    myInt += 3
    print("You entered the number \(myInt) and it is \(myInt < 10) that myInt is less than ten")
    
}
if let _ = Int(userInput) {
    print("Valid input")
}

var myArr = [4,10,3,2,19]

while let last = myArr.popLast() {
    print(last)
}


var firstName: String! = nil
firstName = "Caspar"
firstName = nil
//let myStr = firstName + "The friendly ghost"


var firstName: String = "Ben"
var lastName: String? = "Stone"

(lastName != nil ? lastName! : "No last name") // Dont use this
//The nil coalescing operator
(lastName ?? "No last name") //Use this

lastName == "Stone"

var heightOne: Int? = nil
var heightTwo: Int? = nil


heightOne == heightTwo


var secondTitle: String?
secondTitle = "There and Back Again"

// note how upper is optional even though uppercased() isn't
let upper = Array((secondTitle?.uppercased())!)
var myArr: [Int?]? = nil

let description = myArr?.popLast()

var strangeStructure: ([Int]?, [[Int?]], [[Int]?], Int)? = ([1], [[2,3,4],[],[5,nil],[nil]], [nil, [6,7,8],nil,[],[9]], 10)

var firstNum: Int = 0
var secondNum: Int?
secondNum = 5
if let thirdNum = secondNum {
    firstNum = 2
    print(thirdNum + firstNum)
}
else {
    print(firstNum)
}

var name: String?
name = "Alex"
var age: Int?
age = 9
var isMinor: Bool?

if let userName = name {
    print("Your name is \(userName)")
    if let userAge = age {
        print("Your age is \(userAge)")
        if let userIsMinor = isMinor {
            print("\(userName) is \(userAge), which means it is \(userIsMinor) that he/she is a minor")
        }
    }
}

let myIntString = "35"
let myIntStringToInt = Int(myIntString)

var board = [[1,2,3],[4,5,6],[7,8,9]]
var rotatedBoard = [[0,0,0],[0,0,0],[0,0,0]]

for row in 0..<board.count {
    for column in 0..<board[row].count {
        rotatedBoard[column][board[row].count - 1 - row] = board[row][column]
    }
}


"new york".capitalized(with: Locale.current)
*/

// Some students were asked some questions about their favorite foods and colors and the answers were stored in an array studentInfo.

// a. Print the names of the students that do not have a favorite color.

// b. Print the names of the students that don't have a favorite color or a favorite food.

// c. Create a new array of type [(String, String, String)] that contains the students with both favorite colors and foods.

let studentInfo: [(String, String?, String?)] = [("Bill", "Burgers", "Blue"), ("Rita", nil, "Red"), ("Peter", "Pizza", "Purple"), ("Sarah", "Sandwiches", nil), ("Jeff", nil, nil), ("Lucy", "Leftovers", "Lilac"), ("Mike", "Meat", "Mauve"), ("Gemma", nil, "Green")]

for student in studentInfo {
    if let _ = student.2 {
    } else {
        print(student.0)
    }
}

for student in studentInfo where student.1 == nil && student.2 == nil {
    print(student.0)
}

var cleanArr = [(String, String, String)]()
/*
for student in studentInfo where student.0 != nil && student.1 != nil && student.2 != nil{
    cleanArr.append((student.0,student.1!,student.2!))
}

for student in studentInfo {
    if let food = student.1, let color = student.2 {
        cleanArr.append((student.0, food, color))
    }
}
cleanArr
*/

// Given an optional array of optional tuples of optional UInt8s,

// a. Write code to safely unwrap and print the tuples in the array with all 3 RGB values.

// b. Write code that counts all the nil values.

let possibleColors: [(r: UInt8?, g: UInt8?, b: UInt8?)?]? = [(128, 21, 7), (0, 0, 0), nil, (nil, 25, 82), (255, 255, 255), nil, (200, 100, nil), (120, nil, 23), (0, 255, 106), (nil, nil, nil), nil, (100, 100, 200)]

if let validPossibleColors = possibleColors {
    for tuple in validPossibleColors {
        if let validTuple = tuple {
            if let colorOne = validTuple.0,
                let colorTwo = validTuple.1,
                let colorThree = validTuple.2 {
                print(colorOne, colorTwo, colorThree)
            }
        }
    }
}
