import Foundation

func myFirstFunction() {
    print("Hello world")
}

myFirstFunction()


func doubleANumber(number x: Int) -> Int {
    let doubledNumber = 2 * x
    return doubledNumber
}

func divide(_ dividend: Int, by divisor: Int) -> Int {
    if divisor != 0 {
        return dividend / divisor
    } else {
        return 0
    }
}

func testFunc() -> () {
    print("Yo")
}

func excitedPrint(str: String, terminator: String = "\n") {
    print(str + "!", terminator: terminator)
}

excitedPrint(str: "hello", terminator: "pleh")

func defaultValues(x: Int = 4, y: Int = 8, z: Int = 2) -> Int {
    return x + y + z
}
var a = defaultValues(x: 2, z: 1)
print(a)

class myClass {
    var a: Int
    var b: Int
    init(a: Int, b: Int) {
        self.a = a
        self.b = b
    }
}

var aClass = myClass(a: 9, b: 3)
var bClass = aClass

("0"..<"9").contains("4")


isKnownUniquelyReferenced(&aClass)

func firstUniqChar(_ s: String) -> Int {
    var repeatingDict = [Character: (index: Int, count: Int)]()
    for (i,c) in s.characters.enumerated() {
        if let val = repeatingDict[c] {
            repeatingDict[c] = (i, val.count + 1)
        } else {
            repeatingDict[c] = (i, 1)
        }
    }
    for (key, value) in repeatingDict {
        if value.count != 1 {
            repeatingDict[key] = nil
        }
    }
    if repeatingDict.isEmpty {
        return -1
    } else {
        return repeatingDict.values.map{$0.index}.min()!
    }
}

func squareA(a: Int) -> Int {
    var finalVal = a
    for _ in 1..<a {
        finalVal += a
    }
    return finalVal
}

squareA(a: 6)

func squareC(c: Int = 100) -> Int {
    return c * c
}
print(squareC(c: 3))


//a)
func functionA(nums: [String]) {
    for num in nums {
        print(num)
    }
}

//c)
let b = "Goodbye!"
func functionC(_ a: String) -> String {
    return "Hi there!"
}

let hiString: String = functionC("")

//d)
func functionD(x: Int) -> (Int, Bool) {
    if x > 10 {
        return (x, true)
    }
    return (x, false)
}
let myArray = ["Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot"]

var stringC = "ABCDE"
for element in myArray {
    if element == "Foxtrot" {
        continue
        stringC += "F"
    }
}

var arrayD1 = ["A","B","C"]
var arrayD2 = ["D","E","F"]
for element in arrayD2 {
    arrayD1.append(element)
}
var stringD = ""
for element in arrayD1 {
    stringD.append(element)
}

/*
Write a function that takes an array of Ints and an Range of Ints as input.  Return an array that contains only the elements inside the Range.
 */


let sampleArr = [-1,4,42,23,3,2,0,23,2,1]
let sampleRange: CountableRange<Int> = 0..<4

func filter(arr: [Int], byElementsIn range: CountableRange<Int>) -> [Int] {
    var finalArr = [Int]()
    for num in arr {
        switch num {
        case range:
            finalArr.append(num)
        default:
            break
        }
    }
    return finalArr
}

filter(arr: sampleArr, byElementsIn: sampleRange)

//Should return [3,2,0,2,1]

/*
 Write a function that removes all the vowels from a String.  Have "y" not be a vowel by default, but have a parameter that sets it.
 */

var sampleStr = "These are the voyages of the starship Enterprise"
var yIsVowel = true


func disemvowel(str: String, yIsVowel: Bool = false) -> String {
    let vowels = yIsVowel ? "aeiouy" : "aeiou"
    var finalStr = ""
    for c in str.characters {
        if !vowels.contains(String(c).lowercased()) {
            finalStr.append(c)
        }
    }
    return finalStr
}

func secondLargest(arr: [Int]) -> Int {
    var largest = Int.min
    var secondLargest = Int.min
    for num in arr {
        if num > largest {
            let temp = largest
            largest = num
            secondLargest = temp
        } else if num > secondLargest {
            secondLargest = num
        }
    }
    return secondLargest
}

secondLargest(arr: sampleArr)


