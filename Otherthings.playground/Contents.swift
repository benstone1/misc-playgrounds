//: Playground - noun: a place where people can play

import UIKit


import Foundation
import UIKit
/*
var str = "Hello, playground"

let jsonData =
"""
{"number_of_results": 2,
"results" : [
{"name": "Ben",
"num" : 5,
"images" : {
"small" : "www.smallben.com",
"original" : "www.ogben.com"
}
},
{"name" : "Al",
"num": 2,
"images" : null
}
]
}
""".data(using: .utf8)!

struct ResultsInfo: Codable {
    //let number_of_results: Int
    let results: [Person]
}

struct Person: Codable {
    let name: String
    let num: Int
    let images: ImageWrapper?
}

struct ImageWrapper: Codable {
    let small: String
    let original: String
}

do {
    let info = try JSONDecoder().decode(ResultsInfo.self, from: jsonData)
    let people = info.results
    for person in people {
        print(person.name)
    }
}
catch {
    print(error)
}
*/

//DSA

//Big O Notation

//Arrays

//Linked Lists

//Stacks

//Queues

//Hashmaps

class Node {
    var val: Int
    var next: Node?
    init(val: Int) {
        self.val = val
    }
}





/*
func bestAverageAndWorstFunc(arr: [Int]) {
    guard if arr.count < 3 {
        return
    }
    guard if arr[0] == 8675309 {
        return
    }
    if arr[0] + arr[1] == 24601 {
        for _ in arr {
            for _ in arr {
                print("Gotcha!")
            }
        }
        return
    }
    for num in arr {
        print(num)
    }
}

func exampleOne(string str: String, withCharacter c: Character) -> Bool {
    for char in str.characters {
        if char == c {
            return true
        }
    }
    return false
}

func compoundRuntimes(arr: [Int]) {
    for _ in 0..<1000 {
        print("Hi!")
    }
    for num in arr {
        print(num)
    }
    for (indexOne,numOne) in arr.enumerated() {
        for (indexTwo, numTwo) in arr.enumerated() {
            if indexOne != indexTwo && numOne == numTwo {
                print("It's a match! \(numOne) and \(numTwo) are equal")
            }
        }
    }
}
*/

"Frank".hashValue
