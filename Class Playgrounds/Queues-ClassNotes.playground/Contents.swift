//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

struct QueueWithArr<T> {
    private var arr = [T]()
    var isEmpty: Bool {
        return arr.isEmpty
    }
    mutating func enQueue(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func deQueue() -> T? {
        return arr.removeFirst()
    }
    func peek() -> T? {
        return arr.first
    }
}

class Node<T> {
    var val: T
    var next: Node<T>?
    init(_ val: T) {
        self.val = val
    }
}

struct Queue<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    var isEmpty: Bool {
        return (head == nil) || (tail == nil)
    }
    mutating func enQueue(_ newElement: T) {
        let newNode = Node(newElement)
        if self.isEmpty {
            self.head = newNode
            self.tail = newNode
        } else {
            self.tail?.next = newNode
            self.tail = newNode
        }
    }
    mutating func deQueue() -> T? {
        if self.isEmpty {
            return nil
        }
        let oldHead = self.head
        self.head = self.head?.next
        return oldHead?.val
    }
    func peek() -> T? {
        return self.head?.val
    }
}

var newQ = Queue<Int>()

newQ.enQueue(10)
newQ.enQueue(20)
newQ.enQueue(30)

while !newQ.isEmpty {
    print(newQ.deQueue()!)
}


struct Stack<T> {
    private var arr = [T]()
    var isEmpty: Bool {
        return arr.isEmpty
    }
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
}

struct QueueWithTwoStacks<T> {
    private var enQueueStack = Stack<T>()
    private var deQueueStack = Stack<T>()
    var isEmpty: Bool {
        return enQueueStack.isEmpty && deQueueStack.isEmpty
    }
    mutating func enQueue(_ newElement: T) {
        while !deQueueStack.isEmpty {
            enQueueStack.push(deQueueStack.pop()!)
        }
        enQueueStack.push(newElement)
    }
    mutating func deQueue() -> T? {
        while !enQueueStack.isEmpty {
            deQueueStack.push(enQueueStack.pop()!)
        }
        return deQueueStack.pop()
    }
    mutating func peek() -> T? {
        while !enQueueStack.isEmpty {
            deQueueStack.push(enQueueStack.pop()!)
        }
        return deQueueStack.peek()
    }
}

var newQ2 = QueueWithTwoStacks<Int>()

newQ2.enQueue(10)
newQ2.enQueue(20)
newQ2.deQueue()
newQ2.enQueue(30)
newQ2.enQueue(49)

while !newQ2.isEmpty {
    print(newQ2.deQueue()!)
}
