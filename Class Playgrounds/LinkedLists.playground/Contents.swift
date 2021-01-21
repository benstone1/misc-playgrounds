//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
class Node {
    var key: Int
    var next: Node?
    init(key: Int) {
        self.key = key
    }
}

let nodeOne = Node(key: 10)
nodeOne.next

let nodeTwo = Node(key: 20)
let nodeThree = Node(key: 30)

nodeOne.next = nodeTwo
nodeTwo.next = nodeThree

print(nodeOne.key, nodeOne.next!.key, nodeOne.next!.next!.key)
*/
//Generics
class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}



class LinkedList<Key: Equatable> {
    var head: Node<Key>? = nil
    func printKeys() {
        //Iterate through a linked list
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode!.next
        }
    }
    func contains(_ target: Key) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode!.key == target {
                return true
            }
            currentNode = currentNode!.next
        }
        return false
    }
    subscript(index: Int) -> Key? {
        var current: (node: Node?, index: Int) = (head, 0)
        while current.node != nil {
            if current.index == index {
                return current.node!.key
            }
            current = (current.node!.next, current.index + 1)
        }
        return nil
    }
    func remove(at targetIndex: Int) -> Key? {
        //Deleting the head
        guard targetIndex != 0 else {
            let deletedHead = self.head
            self.head = self.head?.next
            return deletedHead?.key
        }
        //Deleting any node
        var current: (node: Node?, index: Int) = (head, 0)
        while current.node != nil {
            if current.index == targetIndex - 1 {
                let deletedNodeKey = current.node!.next?.key
                //delete it here, then return it
                current.node!.next = current.node!.next?.next
                return deletedNodeKey
            }
            current = (current.node!.next, current.index + 1)
        }
        //Index out of bounds
        return nil
    }
    func insert(_ newKey: Key, at targetIndex: Int) -> Bool {
        guard targetIndex != 0 else {
            let newNode = Node(key: newKey)
            newNode.next = self.head
            self.head = newNode
            return true
        }
        var currentNode = head
        var currentIndex = 0
        while currentNode != nil {
            if currentIndex == targetIndex - 1 {
                let newNode = Node(key: newKey)
                newNode.next = currentNode!.next
                currentNode!.next = newNode
                return true
            }
            currentNode = currentNode?.next
            currentIndex += 1
        }
        return false
    }
    
}

let myList = LinkedList<Int>()
let nodeOne = Node(key: 10)
let nodeTwo = Node(key: 20)
let nodeThree = Node(key: 30)
nodeOne.next = nodeTwo
nodeTwo.next = nodeThree

myList.head = nodeOne

myList.printKeys()
print()
myList.contains(24)
myList[6]
myList.remove(at: 1)
myList.printKeys()
myList.insert(20, at: 1)
myList.insert(25, at: 2)
myList.insert(40, at: 4)
myList.insert(-5, at: 0)
myList.printKeys()

let emptyList = LinkedList<Int>()
emptyList.insert(5, at: 1)


/*
let intNode = Node(key: 5)
let strNode = Node(key: "test")

//let arrNode = Node(key: [4,2])

let myArr: Array<Int> = []

//"d" -> "a" -> "c" -> "p" -> nil

let nodeOne = Node(key: "d")
nodeOne.next = Node(key: "a")
nodeOne.next?.next = Node(key: "c")
nodeOne.next?.next?.next = Node(key: "p")

print(nodeOne.key, nodeOne.next?.next?.next?.key)
*/

class myClass {
    var n: Int = 3
    var x: Int = 3
    var p: String = "sdf"

}

struct myStruct {
    var n: Int = 3
    var x: Int = 3
    var p: String = "sdf"
}

MemoryLayout.size(ofValue: myClass())
MemoryLayout.size(ofValue: myStruct())

