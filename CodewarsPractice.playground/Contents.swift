//: Playground - noun: a place where people can play

import UIKit


//let a1 = ["live", "arp", "strong"]
//let a2 = ["lively", "alive", "harp", "sharp", "armstrong"]
//
//func inArray(_ a1: [String], _ a2: [String]) -> [String] {
//    var finalArr = [String]()
//    for possibleSubString in a1 {
//        for str in a2 {
//            if str.range(of: possibleSubString) != nil {
//                finalArr.append(possibleSubString)
//            }
//        }
//    }
//    return Set(finalArr).sorted()
//}
//
//inArray(a1, a2)
//
//class Node {
//    var data: Int
//    var next: Node?
//    init(_ data: Int) {
//        self.data = data
//    }
//}
//
//let root = Node(0)
//root.next = Node(10)
//root.next?.next = Node(20)
//root.next?.next = Node(30)
//
//func sortedInsert(_ head: Node?, _ data: Int) -> Node? {
//    let newNode = Node(data)
//    guard let listHead = head else { return newNode }
//    var currentNode = listHead
//    while currentNode.next != nil {
//        if newNode.data < currentNode.next!.data {
//            newNode.next = currentNode.next
//            currentNode.next = newNode
//            return listHead
//        }
//        currentNode = currentNode.next!
//    }
//    currentNode.next = newNode
//    return listHead
//}
//
//sortedInsert(root, 17)
//
//print("hi")
//
////var currentNode: Node? = root
////while currentNode != nil {
////    print(currentNode!.data)
////    currentNode = currentNode!.next
////    break
////}

let nums = [4,2,9,10,3,7]

let formatNum = {(num: Int) in return "\(num).0"}

func format(_ nums: [Int], with closure: (Int) -> String) -> [String] {
    return nums.map(closure)
}
format(nums, with: formatNum)

func cycle(_ n: Int) -> Int {
    guard isCoprimeWithTen(n: n) else { return -1 }
    let quotient = 1.0 / Double(n)
    var cycleNum = 1
    while true {
        if numberOfCycles(for: quotient, equals: cycleNum) {
            return cycleNum
        }
        if cycleNum > Int.max {
            return -1
        }
        cycleNum += 1
    }
}

func isCoprimeWithTen(n: Int) -> Bool {
    return n % 5 != 0 && n % 2 != 0
}

func numberOfCycles(for quotient: Double, equals cycleNum: Int) -> Bool {
    var q = quotient
    q *= pow(10, Double(cycleNum))
    let possibleCycleSequence = Int(q)
    q -= Double(possibleCycleSequence)
    q *= pow(10, Double(cycleNum))
    return Int(q) == possibleCycleSequence
}

cycle(33)
