import UIKit

enum MathError: Error {
    case divideByZero
}

let myResult: Result<Int, MathError>

func divide(_ numOne: Int, by numTwo: Int) -> Result<Int, MathError> {
    guard numTwo != 0 else { return .failure(.divideByZero) }
    return .success(numOne / numTwo)
}

switch divide(4, by: 0) {
case let .failure(error):
    print(error)
case let .success(value):
    print(value)
}

//
////var str = "Hello, playground"
////var myInts: [Int8] = []
////
////myInts.append(9)
////myInts.append(3)
////myInts.append(5)
////myInts.append(7)
////myInts.append(1)
////
////myInts.remove(at: 0)
////myInts[0]
//
////class IntNode {
////    let val: Int
////    var next: IntNode?
////    init(val: Int) {
////        self.val = val
////    }
////}
////
////class StrNode {
////    let val: String
////    var next: StrNode?
////    init(val: String) {
////        self.val = val
////    }
////}
////
////class DoubleNode {
////    let val: Double
////    var next: DoubleNode?
////    init(val: Double) {
////        self.val = val
////    }
////}
////
////
////
////
////let nodeOne = Node(val: 1)
////let nodeTwo = Node(val: 2)
////
////nodeOne.next = nodeTwo
////
////let strNodeOne = Node(val: "hello!")
////let strNodeTwo = Node(val: "goodbye!")
////
////strNodeOne.next = strNodeTwo
////
//
//
////
////let intArr = [Int]()
////let doubleArr = [Double]()
////let strArr = [String]()
////
////let intArr2 = Array<Int>()
////let doubleArr2 = Array<Double>()
////let strArr2 = Array<String>()
//
//class Node<T> {
//    let val: T
//    var next: Node<T>?
//    init(val: T) {
//        self.val = val
//    }
//}
//
//
//class LinkedList<T: Equatable> {
//    var head: Node<T>?
//
//    var count: Int {
//        var count = 0
//        var currentNode = head
//        while currentNode != nil {
//            currentNode = currentNode?.next
//            count += 1
//        }
//        return count
//    }
//
//    func printAllNodes() {
//        var currentNode = head
//        while currentNode != nil {
//            print(currentNode!.val)
//            currentNode = currentNode?.next
//        }
//    }
//
//    func contains(target: T) -> Bool {
//        var currentNode = head
//        while currentNode != nil {
//            if currentNode?.val == target { return true }
//            currentNode = currentNode?.next
//        }
//        return false
//    }
//
//    func getNode(at index: Int) -> Node<T>? {
//        guard index >= 0 else { return nil }
//        var counter = 0
//        var currentNode = head
//        while counter < index {
//            currentNode = currentNode?.next
//            counter += 1
//        }
//        return currentNode
//    }
//
//    func append(newValue: T) {
//        if head == nil {
//            head = Node(val: newValue)
//            return
//        }
//        var currentNode = head
//        while currentNode?.next != nil {
//            currentNode = currentNode?.next
//        }
//        currentNode?.next = Node(val: newValue)
//    }
//
//    func insert(newValue: T, at index: Int) {
//        let newNode = Node(val: newValue)
//        guard let nodeBefore = getNode(at: index - 1) else {
//            if index == 0 {
//                newNode.next = head
//                head = newNode
//            } else {
//                append(newValue: newValue)
//            }
//            return
//        }
//        newNode.next = nodeBefore.next
//        nodeBefore.next = newNode
//    }
//
//    func delete(at index: Int) {
//        guard let nodeBefore = getNode(at: index - 1) else {
//            if index == 0 {
//                head = head?.next
//            }
//            return
//        }
//        nodeBefore.next = nodeBefore.next?.next
//    }
//
//    init(head: Node<T>?) {
//        self.head = head
//    }
//}
//
//let nodeOne = Node(val: "one")
//let nodeTwo = Node(val: "two")
//let nodeThree = Node(val: "three")
//let nodeFour = Node(val: "four")
//
//nodeOne.next = nodeTwo
//nodeTwo.next = nodeThree
//nodeThree.next = nodeFour
//
//let linkedList = LinkedList(head: nodeOne)
//
//linkedList.count
//
//
//linkedList.printAllNodes()
//
//let newList = LinkedList<Int>(head: nil)
//
//newList.append(newValue: 9)
//newList.append(newValue: 3)
//newList.append(newValue: 5)
//
//newList.printAllNodes()
