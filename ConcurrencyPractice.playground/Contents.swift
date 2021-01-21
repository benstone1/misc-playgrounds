//: Playground - noun: a place where people can play

import UIKit
import PlaygroundSupport

var str = "Hello, playground"

//Enables async calls in Playground
PlaygroundPage.current.needsIndefiniteExecution = true

let q1 = DispatchQueue.global(qos: .background)
let q2 = DispatchQueue.global(qos: .background)

q1 === q2


