//: Playground - noun: a place where people can play
import UIKit

//---------------------------------------------
// Helper Function
/*
func randNum() -> Bool {
    let random = Int(arc4random_uniform(6)) % 2
    if random == 0 {
        return true
    }
    return false
}


func lvlGenerator() -> Int {
    return Int(arc4random_uniform(12))
}

func eStone() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Electric"
    case 1:
        return "Grass"
    case 2:
        return "Fire"
    case 3:
        return "Water"
    default:
        return "No Stone"
    }
}

func starterPokemon() -> String {
    let random = Int(arc4random_uniform(3))
    switch random {
    case 0:
        return "Pikachu"
    case 1:
        return "Bulbasaur"
    case 2:
        return "Charmander"
    case 3:
        return "Squirtle"
    default:
        return "Not a Pokemon"
    }
}
//---------------------------------------------


//A)
var tuple: (Int, Int)?
if randNum() {
    tuple = (5, 3)
}
if let unwrappedTuple = tuple {
    print(unwrappedTuple)
}
// Safely unwrap “tuple” if there’s a non-nil tuple value and print it out




//B)
var myInt: Int?
if randNum() {
    myInt = 5
}
if myInt != nil {
    myInt! *= 2
    print(myInt!)
} else {
    print("Error: myInt is nil")
}

//Write code that either doubles myInt and then prints it, or prints an error message if myInt is nil






//C)
let myString: String?
let stringTwo = ", LastName"
if randNum() {
    myString = "FirstName"
}
//Write code that prints out “FirstName, LastName” using string concatenation or prints an error message if myString is nil.







//D)
var myDouble: Double?
let doubleTwo: Double = 5
if randNum() {
    myDouble = 12
}
if let safemyDouble = myDouble {
    print(safemyDouble * doubleTwo)
} else {
    print("myDouble is nil")
}

//Write code that prints out the product of myDouble and doubleTwo or prints an error message if myDouble is nil








//E)
var isTheGreatest: Bool?
if randNum() {
    isTheGreatest = true
}
if isTheGreatest == nil {
    isTheGreatest = false
}
//  Determine if the variable contains a Boolean or nil value. If nil set the variable to false else keep it true









//F)
var myTuple: (Int?, Int?, Int?, Int?)

if randNum() {
    myTuple.0 = 5
    myTuple.2 = 14
}

if !randNum() {
    myTuple.1 = 9
    myTuple.3 = 10
}
//Print the sum of each non-nil element in myTuple.
let (valOne, valTwo, valThree, valFour) = myTuple
[valOne, valTwo, valThree, valFour].flatMap{$0}.forEach{print($0)}
if valOne != nil {
    print(valOne!)
}
if valTwo != nil {
    print(valTwo!)
}
if valThree != nil {
    print(valThree!)
}
if valFour != nil {
    print(valFour!)
}









//G)
let myIntString = "35"
//Write code that adds 15 to myIntString, then prints the sum.  Use the Int() function which returns an Integer?

var myConvertedInt = Int(myIntString)
if let value = myConvertedInt {
    print(value + 15)
}











//H)
let pokemon: String?
var evolutionaryStone: String?
pokemon = starterPokemon()
evolutionaryStone = eStone()
// evolve your pokemon with appropriate stone

if let myPokemon = pokemon, let myStone = evolutionaryStone {
    switch (myPokemon, myStone) {
    case ("Pikachu", "Electric"):
        print("Congratulations! Your PIKACHU evolved into RAICHU!")
    case ("Bulbasaur", "Grass"):
        print("Congratulations! Your BULBASAUR evolved into IVYSAUR")
    case ("Charmander", "Fire"):
        print("Congratulations! Your CHARMANDER evolved into CHARMELEON")
    case ("Squirtle", "Water"):
        print("Congratulations! Your SQUIRTLE evolved into WARTORTLE")
    default:
        print("No evolution")
    }
}





//I)
var lvl: Int?
lvl = lvlGenerator()
var exp = 21
// add 150 exp if lvl is above 7

if let lvlNum = lvl {
    if lvlNum > 7 {
        exp += 150
    }
}
*/
let myString = "hel5lod4"

func playPass(_ s: String, _ n: Int) -> String {
    return String(s.characters.enumerated().map{
        if let intChar = Int(String($0.element)) {
            return Character(String(9 - intChar))
        } else if CharacterSet.letters.contains(String($0.element).unicodeScalars.first!) {
            let shouldUpperCase = $0.offset % 2 == 0
            let currentVal = Int(String($0.element).unicodeScalars.first!.value)
            let newVal = currentVal + n
            if (91..<98).contains(newVal) || newVal > 123 {
                return shouldUpperCase ? "A" : "a"
            }
            let newChar = Character(UnicodeScalar(newVal)!)
            return shouldUpperCase ? Character(String(newChar).uppercased()) : Character(String(newChar).lowercased())
        } else {
            return $0.element
        }
        }.reversed())
}




func makeChange(target: Int, _ currencyArr: [Int], _ length: Int = 0) -> (change: [Int], length: Int)? {
    if target == 0 {
        return ([], length)
    }
    if target < 0 {
        return nil
    }
    var bestPath: ([Int], Int)?
    var currentMinPath = Int.max
    for bill in currencyArr {
        if let (otherBills, pathLength) = makeChange(target: target - bill, currencyArr, length + 1) {
            let path = [bill] + otherBills
            if pathLength < currentMinPath {
                bestPath = (path,pathLength)
                currentMinPath = pathLength
            }
        }
    }
    print(target, length)
    return bestPath
}

//makeChange(target: 17, [2,10,3])

var changeDict = [Int: [Int]]()

func makeChangeMemoized(target: Int, _ currencyArr: [Int]) -> [Int]? {
    //base cases
    if target == 0 {
        return []
    }
    if target < 0 {
        return nil
    }
    var bestPath: [Int]?
    var currentMinPath = Int.max
    //Find the ways to create change by looking at each bill
    for bill in currencyArr {
        var result: [Int]?
        //Check if the path has been stored
        if let otherBills = changeDict[target - bill] {
            result = otherBills
        }
        //Make recursive call if path has not yet been stored
        else if let otherBills = makeChangeMemoized(target: target - bill, currencyArr) {
            result = otherBills
        }
        //If there is a viable path to make change, check if the length is smaller than other paths.  If so, save this path.
        if result != nil {
            let path = [bill] + result!
            if path.count < currentMinPath {
                bestPath = path
                currentMinPath = path.count
            }
        }
    }
    //Memoize the path to the end
    if bestPath != nil {
        changeDict[target] = bestPath!
    }
    return bestPath
}
makeChangeMemoized(target: 16, [1,5,9])