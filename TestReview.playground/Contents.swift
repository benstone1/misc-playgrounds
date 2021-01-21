//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func secondSmallest(in arr: [Int]) -> Int? {
    guard !arr.isEmpty else { return nil }
    var smallest = Int.max
    var secondSmallest = Int.max
    for num in arr {
        if num < smallest {
            secondSmallest = smallest
            smallest = num
        } else if num < secondSmallest {
            secondSmallest = num
        }
    }
    return secondSmallest
}

secondSmallest(in: [4,23,5,233,12,3])

func removeDupes(in arr: [Int]) -> [Int] {
    var visited = Set<Int>()
    var dupeFreeArr = [Int]()
    arr.forEach{
        if visited.insert($0).inserted {
            dupeFreeArr.append($0)
        }
    }
    return dupeFreeArr
}


removeDupes(in: [1,4,2,3,2,3,4,3,1,3,3,3,52,3,2,4,24])

func combine(arr1: [Int], and arr2: [Int], with closure: ([Int]) -> Int) -> Int {


    return closure(arr1) + closure(arr2)
}

let a = combine(arr1: [4,1,3,2], and: [3,2,1]){return $0.reduce(1,*)}
print(a)


let jsonData =
"""
[
{
"id": 130930,
"comic": {"comic_id": 95,
"comic_title": "Poorly Drawn Lines"},
"status": "published",
"ep_number": 834,
"ep_date": "2017-02-13 15:27:17",
"title": "Omen"
},
{
"id": 130931,
"comic": {"comic_id": 49,
"comic_title": "Surviving the World"},
"ep_number": 3143,
"status": "queued",
"ep_date": "2017-02-13 10:30:00",
"title": "Lesson 3086 - Goods"
}
]
""".data(using: .utf8)!

class Episode: Codable {
    let id: Int
    let comic: Comic
    let status: Status
    let number: Int
    let dateStr: String
    let title: String
    init(id: Int, comic: Comic, status: Status, number: Int, dateStr: String, title: String) {
        self.id = id
        self.comic = comic
        self.status = status
        self.number = number
        self.dateStr = dateStr
        self.title = title
    }
    enum CodingKeys: String, CodingKey {
        case id
        case comic
        case number = "ep_number"
        case status
        case dateStr = "ep_date"
        case title
    }
}

struct Comic: Codable {
    let id: Int
    let title: String
    enum CodingKeys: String, CodingKey {
        case id = "comic_id"
        case title = "comic_title"
    }
}

enum Status: String, Codable {
    case published
    case queued
}

do {
    let episodes = try JSONDecoder().decode([Episode].self, from: jsonData)
    print(episodes)
}
catch {
    print(error)
}
