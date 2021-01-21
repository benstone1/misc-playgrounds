//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

var stringArray: [String] = ["this", "is", "a", "test"]

withUnsafePointer(to: &stringArray){print($0)}

withUnsafePointer(to: &stringArray[0]){p in
    print(p)
}

withUnsafePointer(to: &stringArray[1]){p in
    print(p)
}

withUnsafePointer(to: &stringArray[2]){p in
    print(p)
}

MemoryLayout.size(ofValue: stringArray)


