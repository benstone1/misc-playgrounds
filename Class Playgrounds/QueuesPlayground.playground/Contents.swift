//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//deQueue is too slow!
struct Queue4<T> {
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

class Node<Key> {
    let val: Key
    var next: Node?
    init(val: Key) {
        self.val = val
    }
}

struct Queue3<T> {
    private var head: Node<T>?
    private var tail: Node<T>?
    var isEmpty: Bool {
        return head == nil
    }
    mutating func enQueue(_ newElement: T) {
        let newNode = Node(val: newElement)
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
        return oldHead.val
    }
    func peek() -> T? {
        return self.head?.val
    }
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

struct Queue<T> {
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

