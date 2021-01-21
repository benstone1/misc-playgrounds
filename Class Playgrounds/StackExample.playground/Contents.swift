//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
//Array
class Stack<T> {
    func push(_ newElement: T) {
        arr.append(newElement)
    }
    func pop() -> T? {
        return arr.popLast()
    }
    func peek() -> T? {
        return arr.last
    }
    var isEmpty: Bool {
        return arr.count == 0
    }
    private var arr: [T] = []
}
*/

class Node<T> {
    var val: T
    var next: Node?
    init(val: T) {
        self.val = val
    }
}

class Stack<T> {
    func push(_ newElement: T) {
        let newHead = Node(val: newElement)
        guard let oldHead = linkedListHead else {
            linkedListHead = newHead
            return
        }
        newHead.next = oldHead
        self.linkedListHead = newHead
    }
    func pop() -> T? {
        guard let oldHead = linkedListHead else {
            return nil
        }
        linkedListHead = oldHead.next
        return oldHead.val
    }
    func peek() -> T? {
        guard let oldHead = linkedListHead else {
            return nil
        }
        return oldHead.val
    }
    var isEmpty: Bool {
        return linkedListHead == nil
    }
    private var linkedListHead: Node<T>?
}

let myStack: Stack<Int> = Stack()

myStack.push(4)
myStack.push(8)
myStack.push(84)
myStack.peek()
myStack.pop()
myStack.isEmpty
myStack.pop()
myStack.pop()
myStack.isEmpty
myStack.pop()
