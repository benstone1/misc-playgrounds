//: Playground - noun: a place where people can play

import Foundation
import UIKit

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
    print(people)
}
catch {
    print(error)
}

