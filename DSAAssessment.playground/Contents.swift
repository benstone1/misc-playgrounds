//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func maxAppearances(of arr: [Int]) -> Int {
    var maxDuplicateNumber = 0
    for element in arr {
        var counter = 0
        for elementTwo in arr {
            if element == elementTwo {
                counter += 1
            }
        }
        if counter > maxDuplicateNumber {
            maxDuplicateNumber = counter
        }
    }
    return maxDuplicateNumber
}

func scramble(_ str: String) -> String {
    var charArr = Array(str)
    for index in 0..<charArr.count {
        let randIndex = Int(arc4random_uniform(UInt32(charArr.count)))
        charArr.swapAt(index, randIndex)
    }
    return String(charArr)
}

class Person {
    var name: String
    init(name: String) {
        self.name = name
    }
}

struct Car {
    var plateID: String
}

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


var myQ = Queue<Int>()
myQ.enQueue(4)
myQ.deQueue()
myQ.enQueue(3)
print(myQ.deQueue()!)
