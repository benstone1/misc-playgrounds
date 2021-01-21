//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public class Node<T> {
    var key: T
    var next: Node?
    init(key: T) {
        self.key = key
    }
}

public class LinkedList<T: Equatable> {
    var head: Node<T>?
    
    func printAllKeys() {
        var currentNode = head
        while currentNode != nil {
            print(currentNode!.key)
            currentNode = currentNode?.next
        }
    }
    func reverse() {
        var previousNode: Node<T>? = nil
        var currentNode = head
        while currentNode != nil {
            let nextNode = currentNode!.next
            currentNode?.next = previousNode
            previousNode = currentNode
            currentNode = nextNode
        }
        self.head = previousNode
    }
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

}


let myList = LinkedList<Int>()
myList.head = Node(key: 10)
myList.insert(nodeWithKey: 20, at: 1)
myList.insert(nodeWithKey: 30, at: 2)
myList.insert(nodeWithKey: 40, at: 3)
myList.insert(nodeWithKey: 50, at: 4)

myList.printAllKeys()

myList.reverse()

print()

myList.printAllKeys()
