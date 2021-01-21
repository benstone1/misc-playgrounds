//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class LLNode<Key> {
    let val: Key
    var next: LLNode?
    init(val: Key) {
        self.val = val
    }
}
struct Queue<T> {
    private var head: LLNode<T>?
    private var tail: LLNode<T>?
    var isEmpty: Bool {
        return head == nil
    }
    mutating func enQueue(_ newElement: T) {
        let newNode = LLNode(val: newElement)
        guard let tail = tail else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    mutating func deQueue() -> T? {
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        if oldHead.next == nil {
            self.tail = nil
        }
        return oldHead.val
    }
    func peek() -> T? {
        return self.head?.val
    }
}

//func secondSmallestA(inArr arr: [Int]) -> Int {
//    var smallest = Int.max
//    var secondSmallest = Int.max
//    for num in arr {
//        if num < smallest {
//            smallest = num
//        } else if num > smallest && num < secondSmallest {
//            secondSmallest = num
//        }
//    }
//    return secondSmallest
//}
//
//secondSmallestA(inArr: [2,3,4,1]) //returns 2
//
//secondSmallestA(inArr: [4,2,3,5])
//
//
//func collapseArray(arr1: [Int], arr2: [Int] , closure: ([Int]) -> Int) -> Int {
//    let arrOne = closure(arr1)
//    let arrTwo = closure(arr2)
//    return arrOne + arrTwo
//}
//
//
////Your algorithm outputs 3 with the input [2,3,4,1].  This is because you are not resetting the second smallest to be what the smallest value used to be.
//
//func secondSmallest(in arr: [Int]) -> Int {
//    var smallest = Int.max
//    var secondSmallest = Int.max
//    var counter = 0
//    while counter < arr.count - 1 {
//        counter += 1
//        for num in arr {
//            if num < smallest {
//                smallest = num
//            }
//            if num > smallest && num < secondSmallest{
//                secondSmallest = num
//            }
//        }
//        print("Smallest: \(smallest)")
//        print("Second Smallest \(secondSmallest)")
//    }
//    return secondSmallest
//}
//
//func smallestIntInArray(arr: [Int]) -> Int {
//    var smallest: Int = arr[0]
//    for val in arr where val < smallest {
//        smallest = val
//    }
//    return smallest
//}
//
//
//
//var intArray = [-3,-5,-7,-2]
//var smallest = Int.max
//var secondSmallest = Int()
//
//
//for number in intArray {
//    if number < smallest {
//        secondSmallest = smallest
//        smallest = number
//    } else if secondSmallest > number  {
//        secondSmallest = number
//    }
//}
//
//print(secondSmallest)
//
//
//class Episode: Codable {
//
//    let id: String
//
//    struct Comic: Codable {
//        let comic_id: Int
//        let comic_Title: String
//    }
//
//    let comic: Comic
//    var episodeNumber: Int
//
//    enum Status: String, Codable {
//        case published
//        case queued
//    }
//
//    let status: Status
//    let title: String
//}
//
//"Ben".hashValue
//
//4799450059696916473 % 6
//
//
//var arrayOfInts: [Int] = [8,0,2,3,4,6]
//
//func findSecondSmallest(in array: [Int]) -> Int {
//    //    var small = array[array.count - 1]
//    var small = Int.max
//    var smallest = 0
//
//    for num in array {
//        if small > num {
//            small = num
//        }
//        smallest = small
//    }
//    return small
//}
//
//findSecondSmallest(in: arrayOfInts)
//
//
//func answer(array: [Int]) -> [Int] {
//    var array2 = array
//    var ind = array.count - 1
//    for index in 0...array.count - 1 {
//        if array[index] == array2[(index - ind)] {
//            array2.remove(at: index + 1)
//        }
//    }
//    return array2
//}
//
//var theAnswer = answer(array: [3,4,2,3,8])

func exponent(num x: Int, powerOf n:Int) -> Int {
    if n == 0 { return 1 } //base cases
    if n == 1 { return x }
    return x * exponent(num: x, powerOf: n-1)
}

exponent(num: 2, powerOf: 3)

func base(_ base: Int, raisedToThe exp: Int) -> Double {
    if base == 0 && exp == 0 {
        fatalError()
    }
    
    if exp == 0 {
        return 1
    }
    
    if exp < 0 && base == 0 {
        fatalError()
    }
    if base == 0 {
        return 0
    }
    
    var tempExp = exp < 0 ? -exp : exp
    var result = 1
    while tempExp > 0 {
        result *= base
        tempExp -= 1
    }
    return exp < 0 ? 1 / Double(result) : Double(result)
}

base(2, raisedToThe: 3)

func putThis(elementInFront element: Any, ofQueue queue: Queue<Any>) -> Queue<Any> {
    let newFirstElement = element
    var oldQueue = queue
    var newQueue = Queue<Any>()
    var currentElement = oldQueue.peek()
    guard !oldQueue.isEmpty else { return oldQueue }
    // first add new element to the head of the new queue
    newQueue.enQueue(newFirstElement)
    // while the old queue has elements in it,
    while !oldQueue.isEmpty {
        // dequeue the head of the old queue
        currentElement = oldQueue.deQueue()
        // add the head of the old queue to the tail of the new queue
        newQueue.enQueue(currentElement!)
    }
    return newQueue
}

var myQueue = Queue<Any>()
myQueue.enQueue(1)
myQueue.enQueue(2)
myQueue.enQueue(3)
//dump(myQueue)
var newQ = putThis(elementInFront: 0, ofQueue: myQueue)
while !newQ.isEmpty {
    print(newQ.deQueue()!)
}

func areAnagrams(ifStrOne str1: String, andStrTwo str2: String) -> Bool {
    var str1Arr = Array(str1.description)
    var str2Arr = Array(str2.description)
    // make sure the starting arrays are equal in count
    guard str1Arr.count == str2Arr.count else { return false }
    while !str2Arr.isEmpty {
        if str1Arr.contains(str2Arr.last!) {
            str2Arr.popLast()
        }
    }
    return true
}


let strOne = "bananas"

let strTwo = "nabs"

func isAnagram(string1: String, string2: String) -> Bool {
    let str1 = string1
    let str2 = string2
    
    var strArr1 = [Character]()
    var strArr2 = [Character]()
    
    for char in str1 {
        if !strArr1.contains(char) {
            strArr1.append(char)
        }
    }
    
    for char in str2 {
        if !strArr2.contains(char) {
            strArr2.append(char)
        }
    }
    
    strArr1 = strArr1.sorted(by: <)
    print(strArr1)
    strArr2 = strArr2.sorted(by: <)
    print(strArr2)
    
    if strArr1 == strArr2 {
        return true
    } else {
        return false
    }
}



isAnagram(string1: strOne, string2: strTwo)


//counter = n - 1
//total = x
func kashExpo(x: Int, n: Int) -> Int {
    var total = x
    for _ in 0..<(n-1) {
        exponent(num: x, powerOf: n-1)
        total *= x
    }
    return total
}

kashExpo(x: 2, n: 8)

"""
""".data(using: .utf8)!
