//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//Write a function that sums an an array of Ints.  For full credit, use a higher ordered function.

var nums = [1,4,32,42]
//1

func sum(of arr: [Int]) -> Int {
    return arr.reduce(0){$0 + $1}
}

let someCapitals = ["Alabama" : "Montgomery",
                    "Alaska" : "Juneau",
                    "Arizona" : "Phoenix",
                    "Arkansas" : "Little Rock",
                    "California" : "Sacramento",
                    "Colorado" : "Denver"
                    ]

//2

if let arkansasCap = someCapitals["Arkansas"] {
    print(arkansasCap)
}

//3

for (key, value) in someCapitals {
    if value == "Denver" {
        print(key)
    }
}

enum Ship: String {
    case battle
    case friend
}

// 4

print("Hi \(Ship.friend), lets do \(Ship.battle)")

//5

func identify(ship: Ship) -> String {
    switch ship {
    case .battle:
        return "DANGER"
    case .friend:
        return "SAFE"
    }
}

// 6

let numb3rs = ["1", "2", "chair", "5", "seventeen", "89"]

func mapClone(arr: [String], closure: (String) -> Int?) -> [Int?] {
    var mappedArr = [Int?]()
    for str in arr {
        if let mappedThing = closure(str) {
        mappedArr.append(mappedThing)
        }
    }
    return mappedArr
}

print(mapClone(arr: numb3rs){(str: String) -> Int? in
    return Int(str)
})

// 7

let sampleWords = ["canoeing", "hiking", "be", "camping", "drive", "drink", "shampooing"]

func ingWords(arr: [String]) -> [String] {
    return arr.filter{$0.hasSuffix("ing")}
}

func ingWordsTheHardWay(arr: [String]) -> [String] {
    var ingWordsArr = [String]()
    for word in arr {
        guard word.count > 2 else { continue }
        let wordArr = Array(word)
        let lastThreeChars = wordArr[(wordArr.count - 3)...]
        let endsWithING = String(lastThreeChars) == "ing"
        if endsWithING {
            ingWordsArr.append(word)
        }
    }
    return ingWordsArr
}

ingWordsTheHardWay(arr: sampleWords)


// 8

class C4QTA {
    let name: String
    let id: Int
    let githubAccountName: String
    var favoriteColor: String
    init(name: String, id: Int, githubAccountName: String, favoriteColor: String) {
        self.name = name
        self.id = id
        self.githubAccountName = githubAccountName
        self.favoriteColor = favoriteColor
    }
}



var c4qTAs: [C4QTA] = [
    C4QTA(name: "Karen", id: 3217, githubAccountName: "karen-fuentes", favoriteColor: "green"),
    C4QTA(name: "Vic", id: 3236, githubAccountName: "vic-zhong", favoriteColor: "purple")
]

let sortedTAs = c4qTAs.sorted{$0.id < $1.id}
let nameSortedTAs = c4qTAs.sorted{$0.name < $1.name}

for ta in c4qTAs {
    ta.favoriteColor = "blue"
}

// 9
"PASS BY REFERENCE"

//10

"PASS BY VALUE"

//DSA

// 1
//Closure

//2 + 3
//Queue is FIFO

//4 + 5
//Hashmap gives constant time search for keys

//6 + 7
//Array b/c constant time access

//8
//O(n)

//9
//O(n ^ 2)

// 10
func sumOfFirstFiveEvenNums(in arr: [Int]) -> Int {
    return arr.filter{$0 % 2 == 0}.prefix(5).reduce(0, +)
}

sumOfFirstFiveEvenNums(in: [3,2,1,5,3,2])

func sumWithOutCorners(of matrix: [[Int]]) -> Int {
    guard matrix.count > 1 else { return 0 }
    let cornerSum = matrix.first!.first! + matrix.first!.last! + matrix.last!.first! + matrix.last!.last!
    var arrSum = 0
    for row in matrix {
        for val in row {
            arrSum += val
        }
    }
    print(arrSum - cornerSum)
    print(matrix.flatMap{$0}.reduce(0, +) - cornerSum)
    return matrix.reduce(0){$0 + $1.reduce(0, +)} - cornerSum
}

sumWithOutCorners(of: [[1,2,3],
                       [4,5,6],
                       [7,8,9]])


class Node {
    var key: Int
    var next: Node?
    init(key: Int) {
        self.key = key
    }
}

func sum(of node: Node) -> Int {
    var sum = 0
    var currentNode: Node? = node
    while currentNode != nil {
        sum += currentNode!.key
        currentNode = currentNode?.next
    }
    return sum
}

let nodeOne = Node(key: 4)
let nodeTwo = Node(key: 9)
let nodeThree = Node(key: 1)

nodeOne.next = nodeTwo
nodeTwo.next = nodeThree

sum(of: nodeThree)


struct Stack<T> {
    private var arr = [T]()
    mutating func push(newElement: T){
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.isEmpty
    }
}

var myStack: Stack<Any> = Stack()
myStack.push(newElement: 4)
myStack.push(newElement: "hi:")
myStack.push(newElement: true)







