//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Node<Key> {
    var val: Key
    var next: Node?
    init(val: Key) {
        self.val = val
    }
}

let headNode = Node(val: 5)
let headNode2 = Node(val: "d")



let arr = Array(repeatElement(10, count: 1000))

func constantTime(arr: [Int]) {
    print("Hi")
}

//constantTime(arr: [])
//constantTime(arr: arr)

func contains(arr: [Int], target: Int) -> Bool {
    for element in arr {
        print("running")
        if element == target {
            return true
        }
    }
    return false
}

//contains(arr: [1,2,5,3,6,2,3], target: 8)
//contains(arr: arr, target: 8)

enum Optional<T> {
    case some(wrapped: T)
    case none
}


var strArr = ["this", "is", "a", "test"]

//withUnsafePointer(to: &strArr){ (pointer: UnsafePointer<[String]>) in
//    print("Adress: \(pointer), Data: \(pointer.pointee)")
//}
//withUnsafePointer(to: &strArr[0]){(pointer: UnsafePointer<String>) in
//    print("Adress: \(pointer), Data: \(pointer.pointee)")
//}
//withUnsafePointer(to: &strArr[1]){(pointer: UnsafePointer<String>) in
//    print("Adress: \(pointer), Data: \(pointer.pointee)")
//}

MemoryLayout.size(ofValue: strArr)

//0x000000011b3a0f10
//0x000000011d1e7f10

var intArr: [Int32] = [3,5,121,3]

print("Sentinal Location and arr value")
withUnsafePointer(to: &intArr){print($0, $0.pointee)}
print("Addresses and values of all elements")
for i in 0..<intArr.count {
    withUnsafePointer(to: &intArr[i]){print($0, $0.pointee)}
}
intArr.capacity
intArr.append(5)
intArr.capacity
for i in 0..<intArr.count {
    withUnsafePointer(to: &intArr[i]){print($0, $0.pointee)}
}

struct myStruct {
    var strOne = "asdf"
    var strTwo = "asdjkf"
    var myInt = 34
}

class myClass {
    var strOne = "asdf"
    var strTwo = "asdjkf"
    var myInt = 34
}

MemoryLayout.size(ofValue: "asdf")
MemoryLayout.size(ofValue: myStruct())
MemoryLayout.size(ofValue: myClass())

MemoryLayout.size(ofValue: "4")
intArr.capacity

struct BenArr {
    //let startingAddressOfArr = 0x49394837498238abc
    //let count = 9
    /*
    func append(newElement: T) {
        //go to startingAddressOfArr
        //Multiply self.count by size of things stored in the array
        //Add the above to startingAddressOfArr
       //Go to that memory address
       //Insert newElement there
       //Increment count
    }
    */
}


