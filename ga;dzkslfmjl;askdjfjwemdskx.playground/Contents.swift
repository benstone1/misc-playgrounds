//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

enum DataStructure {
    enum OrderedList: String {
        case SinglyLinkedList = "Singly Linked List"
        case DoublyLinkedList = "Doubly Linked List"
        case Queue
        case Stack
        case Array
    }
    enum UnorderedCollection: String {
        case Dictionary
        case Set
    }
    enum TreesAndGraph: String {
        case Tree
        case BinarySearchTree = "Binary Search Tree"
        case Heap
        case Graph
    }
}

let b = DataStructure.OrderedList(rawValue: "Array")
let a = DataStructure.OrderedList.Array