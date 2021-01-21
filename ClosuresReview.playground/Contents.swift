//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport
/*
PlaygroundPage.current.needsIndefiniteExecution = true

var str = "Hello, playground"

func add(_ num: Int, and num2: Int) -> Int {
    return num + num2
}

let addClosure: (Int, Int) -> Int = {(num: Int, num2: Int) in
    return num + num2
}

let addClosure2: (Int, Int) -> Int = {(num, num2) in return num + num2}

let addClosure3: (Int, Int) -> Int = {return $0 + $1}

let addClosure4: (Int, Int) -> Int = {$0 + $1}

var mostRecentResult = 4

func doMathStuff(with num1: Int,
                 and num2: Int,
                 combinationInstructions: (Int, Int) -> Int,
                 completionHandler: (Int) -> Void) {
    let result = combinationInstructions(num1, num2)
    completionHandler(result)
}

let completion2: (Int) -> Void = {(onlineNumber: Int) in
    mostRecentResult = onlineNumber
}

doMathStuff(with: 4, and: 9, combinationInstructions: {$0 + $1}, completionHandler: completion2)

print(mostRecentResult)

let mySession = URLSession(configuration: .default)

let myURL = URL(string: "http://www.gutenberg.org/cache/epub/84/pg84.txt")!
func completion(_ data: Data?, _ response: URLResponse?, _ error: Error?) {
    guard let data = data else {return}
    if let response = response {
        print(response)
    }
    if let error = error {
        print(error)
    }
    let dataStr = String(data: data, encoding: .utf8)!
    print(dataStr)
}

let completion3: (Data?, URLResponse?, Error?) -> Void = {(data, response, error) in
    guard let data = data else {return}
    if let response = response {
        print(response)
    }
    if let error = error {
        print(error)
    }
    let dataStr = String(data: data, encoding: .utf8)!
    print(dataStr)
}

mySession.dataTask(with: myURL){(data, response, error) in
    guard let data = data else {return}
    if let response = response {
        print(response)
    }
    if let error = error {
        print(error)
    }
    let dataStr = String(data: data, encoding: .utf8)!
    print(dataStr)
}.resume()



let myArr = [1,45,329,30,21]

//Map
//Builds a new array by applying a closure to each element

let mappedArr = myArr.map{Double($0)}
print(mappedArr)

//Filter
//Builds a new array from elements in the original arr meeting the condition of a closure

let filteredArr = myArr.filter{(num: Int) in
    let numAsStr = String(num)
    let charCount = numAsStr.count
    return charCount == 2
}
print(filteredArr)

//Sort
//Sorts the elements in the array based on the conditions from a closure

let sortedArr = myArr.sorted(){$0.description < $1.description}
print(sortedArr)

//Reduce
//Reduces the array to a single value, combining them as specified in the closure


let reducedArr = myArr.reduce(true){(totalValueSoFar: Bool, nextArrValue: Int) in
    return totalValueSoFar && (nextArrValue < 400)
}
print(reducedArr)

myArr.forEach{print($0)}


func myPrint(items: String...) {
    let items = items
}

 */


//Enum

enum HTTPVerb: String {
    case GET
    case POST
    case DELETE
    case UPDATE = "updaterino"
}

let myVerb = HTTPVerb(rawValue: "SLDKFJ")

func makeRequest(with verb: HTTPVerb) {
    print(verb.rawValue)
    switch verb {
    case .GET:
        print("Getting data")
    case .POST:
        print("Posting data")
    case .DELETE:
        print("deleting data")
    case .UPDATE:
        print("updaing data")
    }
}

makeRequest(with: .UPDATE)

enum NumberWord: String {
    case one, two, three, four, five, six, seven, eight, nine, ten
}

let nurseryRhyme = "One two Buckle my shoe; Three four knock at the door; Five six Pick up sticks; Seven eight lay them straight: Nine ten a big fat hen; Eleven twelve dig and delve."

let bits = nurseryRhyme.components(separatedBy: " ")
print(bits)
let numberBits = bits.filter { (a: String) -> Bool in
    return NumberWord(rawValue: a) != nil
}

enum AppError {
    case badURL(name: String)
    case badStatusCode(num: Int)
    case badData
    case foo(str: String, num: Int, weirdThing: (Double, String) -> [Bool]?)
}

let myAppError = AppError.badStatusCode(num: 404)
switch myAppError {
case let .badStatusCode(num):
    print("Bad status code: \(num)")
default:
    break
}

if case let .badStatusCode(num) = myAppError {
    print("Bad status code: \(num)")
}

struct Order {
    var name: String
    var num: Int
}

var myOrder = Order(name: "df", num: 4)
var orderCopy = myOrder
orderCopy.num = 10
myOrder.num

class Foo: UInt {
    var bar: String
    var bat: String
    init(bar: String, bat: String) {
        self.bar = bar
        self.bat = bat
    }
    convenience init() {
        self.init(bar: "", bat: "")
    }

}

var myFoo = Foo(bar: "a", bat: "b")
var myFooCopy = myFoo
myFooCopy.bar = "Hello"
myFoo.bar

