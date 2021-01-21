//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

import UIKit
import PlaygroundSupport

//Enables async calls in Playground
PlaygroundPage.current.needsIndefiniteExecution = true

DispatchQueue.main.async {
    print(1)
    print(2)
}


DispatchQueue.main.async {
    print(5)
    print(6)
}

DispatchQueue.global(qos: .background).async {
    print(3)
    print(4)
}

print("7")



//
//func currentQueueName() -> String? {
//    let name = __dispatch_queue_get_label(nil)
//    return String(cString: name, encoding: .utf8)
//}
//
//DispatchQueue.global(qos: .background).async {
//    DispatchQueue.main.sync {
//        print("hi")
//    }
//    print("2")
//    print("2 is sleeping")
//    sleep(5)
//    print(currentQueueName()!)
//}
//
//DispatchQueue.global(qos: .background).async {
//    print(3)
//    print(currentQueueName()!)
//}
//
//DispatchQueue.main.async {
//    print("4")
//    print(currentQueueName()!)
//}
//

