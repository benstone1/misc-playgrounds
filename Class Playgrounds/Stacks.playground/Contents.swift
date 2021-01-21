//: Playground - noun: a place where people can play

import UIKit

protocol Stack {
    associatedtype T
    mutating func push(_ newElement: T)
    mutating func pop() -> T?
    func peek() -> T?
    var isEmpty: Bool {get}
}


//Implement a Stack using an Array
struct StackWithArr<T>: Stack {
    private var arr: [T] = []
    mutating func push(_ newElement: T) {
        arr.append(newElement)
    }
    mutating func pop() -> T? {
        return arr.popLast()
        /*
         //TO DO Check for nil
         let lastElement = arr[arr.count - 1]
         self.arr = Array(arr[..<arr.count - 1])
         return lastElement
        */
    }
    func peek() -> T? {
        return arr.last
        
    }
    var isEmpty: Bool {
        return arr.count == 0
        //return arr.isEmpty
    }
}

class Node<T> {
    var val: T
    var next: Node?
    init(val: T) {
        self.val = val
    }
}

struct StackWithLL<T>: Stack {
    var head: Node<T>?
    mutating func push(_ newElement: T) {
        let newHead = Node(val: newElement)
        newHead.next = self.head
        self.head = newHead
    }
    mutating func pop() -> T? {
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        return oldHead.val
    }
    func peek() -> T? {
        return head?.val
    }
    var isEmpty: Bool {
        return head == nil
    }
}

var llStack = StackWithLL<String>()
var arrStack = StackWithArr<String>()

llStack.push("one")
arrStack.push("one")

llStack.push("two")
arrStack.push("two")

llStack.push("three")
arrStack.push("three")

llStack.isEmpty
arrStack.isEmpty

llStack.peek()
arrStack.peek()

while !llStack.isEmpty {
    print("LL Stack: \(llStack.pop()!)")
    print("Arr stack: \(arrStack.pop()!)")
}

arrStack.isEmpty

llStack = StackWithLL<String>()

func test<StackType: Stack>(_ s: StackType) {

}
/*
var myStack: Stack<Int> = Stack()
myStack.push(5)
myStack.isEmpty
myStack.push(10)
myStack.push(15)
myStack.pop()
myStack.peek()
myStack.pop()
myStack.peek()
myStack.pop()
myStack.isEmpty

//Look at all values?

func printAllValues<T: CustomStringConvertible>(in stack: Stack<T>) {
    var stack = stack
    while !stack.isEmpty {
        print(stack.pop()!)
    }
}

var myStack2: Stack<Int> = Stack()
myStack2.push(5)
myStack2.push(10)
myStack2.push(15)
myStack2.push(55)

printAllValues(in: myStack2)
*/
