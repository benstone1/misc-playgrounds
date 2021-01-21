//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }

    //Access
    subscript(index: Int) -> Node<T>? {
        var currentIndex = 0
        var currentNode = head
        while currentNode != nil {
            if index == currentIndex {
                return currentNode
            }
            currentIndex += 1
            currentNode = currentNode?.next
        }
        return nil
    }
    
    //Find
    func contains(element targetKey: T) -> Bool {
        var currentNode = head
        while currentNode != nil {
            if currentNode?.key == targetKey {
                return true
            }
            currentNode = currentNode?.next
        }
        return false
    }
    
    //Insert
    func insert(nodeWithKey k: T, at index: Int) {
        guard index != 0 else {
            let newHead = Node(key: k)
            newHead.next = head?.next
            self.head = newHead
            return
        }
        var currentIndex = 0
        var currentNode = head
        while currentNode != nil {
            if currentIndex == index - 1 {
                let nodeToInsert = Node(key: k)
                let nodeToInsertsNextNode = currentNode?.next
                currentNode?.next = nodeToInsert
                nodeToInsert.next = nodeToInsertsNextNode
            }
            currentIndex += 1
            currentNode = currentNode?.next
        }
        let newNode = Node(key: k)
        currentNode?.next = newNode
    }
    
    //Remove
    func remove(at index: Int) {
        guard index != 0 else {
            self.head = self.head?.next
            return
        }
        var currentIndex = 0
        var currentNode = head
        while currentNode != nil {
            if currentIndex == index - 1 {
                currentNode?.next = currentNode?.next?.next
                return
            }
            currentNode = currentNode?.next
            currentIndex = currentIndex + 1
        }
        print("Index out of range")
    }
    
    //Exercises
    func append(element newKey: T) {
        
    }
    
    var count: Int {
        return 0
    }
}

let myList: LinkedList<Int> = LinkedList()
myList.head = Node(key: 10)
myList.insert(nodeWithKey: 20, at: 1)
myList.insert(nodeWithKey: 30, at: 2)
myList.insert(nodeWithKey: 40, at: 3)

myList.contains(element: 20)
myList.contains(element: 25)

myList[2]?.key
myList[5]?.key

myList.printAllKeys()

myList.remove(at: 2)

myList.printAllKeys()
