//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int)
    {
        self.val = val
        self.next = nil
    }
}

func printNodes(list: ListNode?) {
    var currentNode = list
    while currentNode != nil {
        print(currentNode?.val ?? "No number", terminator: "->")
        currentNode = currentNode?.next
    }
    print("nil")
    print()
}

//func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
//    
//    var currentNode1: ListNode? = l1
//    var currentNode2: ListNode? = l2
//    //    guard currentNode1?.val != nil else { return nil }
//    //    guard currentNode2?.val != nil else { return nil }
//
//    
//    while currentNode1 != nil && currentNode2 != nil {
//        if currentNode1!.val < currentNode2!.val {
//            l3.next = ListNode(currentNode1!.val)
//            currentNode1 = currentNode1?.next
//            
//            print("First if")
//        } else {
//            l3.next = ListNode(currentNode2!.val)
//            currentNode2 = currentNode2?.next
//            print("First else")
//        }
////        if currentNode1 == nil {
////            l3.next = ListNode(currentNode2!.val)
////            print("second if")
////        } else {
////            l3.next = ListNode(currentNode1!.val)
////            print("second else")
////        }
//        printNodes(list: l3)
//    }
//    return l3
//}


func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
    var currentL1: ListNode? = l1
    var currentL2: ListNode? = l2
    var newList: ListNode? = nil

    while currentL1 != nil && currentL2 != nil {
        let lowerL1Val = currentL1!.val < currentL2!.val
        let newNode = lowerL1Val ? ListNode(currentL1!.val) : ListNode(currentL2!.val)
        if newList == nil {
            newList = newNode
        } else {
            var currentNode = newList
            while currentNode?.next != nil {
                currentNode = currentNode?.next
            }
            currentNode?.next = newNode
        }
        if lowerL1Val {
            currentL1 = currentL1?.next
        } else {
            currentL2 = currentL2?.next
        }
    }
    while currentL1 != nil {
        var currentNode = newList
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        currentNode!.next = ListNode(currentL1!.val)
        currentL1 = currentL1?.next
    }
    while currentL2 != nil {
        var currentNode = newList
        while currentNode?.next != nil {
            currentNode = currentNode?.next
        }
        let newNode = ListNode(currentL2!.val)
        currentNode!.next = newNode
        currentL2 = currentL2?.next
    }
    return newList
}


let testList = ListNode(3)
testList.next = ListNode(5)
testList.next?.next = ListNode(8)

let testList2 = ListNode(4)
testList2.next = ListNode(6)
testList2.next?.next = ListNode(9)



var result: ListNode? = mergeTwoLists(testList, testList2)
printNodes(list: result)
