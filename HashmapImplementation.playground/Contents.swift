//: Playground - noun: a place where people can play

import UIKit

class Node<T>: Sequence {
    var val: T!
    var next: Node?
    init(val: T) {
        self.val = val
    }
    func makeIterator() -> LinkedListIterator<T> {
        return LinkedListIterator(self)
    }
}

struct LinkedListIterator<T>: IteratorProtocol {
    var node: Node<T>?
    init(_ startingNode: Node<T>) {
        self.node = startingNode
    }
    mutating func next() -> Node<T>? {
        if let validNode = node {
            node = node?.next
            return validNode
        } else {
            return nil
        }
    }
}

class Hashmap<Key: Hashable, Value> {
    //public API
    init(buckets: Int) {
        self.numberOfBuckets = buckets
        self.arr = Array(repeating: nil, count: buckets)
    }
    
    var keys: [Key] {
        return self.toArr().map{$0.0}
    }
    
    var values: [Value] {
        return self.toArr().map{$0.1}
    }
    
    subscript(_ lookupKey: Key) -> Value? {
        get {
            return findInLinkedList(nil, forKey: lookupKey, shouldUpdateValue: false)
        }
        set(newValue) {
            updateValue(newValue, forKey: lookupKey)
        }
    }
    
    func updateValue(_ newValue: Value?, forKey lookupKey: Key) -> Value? {
        let hashValue = lookupKey.hashValue
        let bucket = hashValue % numberOfBuckets
        if arr[bucket] == nil {
            arr[bucket] = Node(val: (lookupKey, newValue))
        } else {
            return findInLinkedList(newValue, forKey: lookupKey, shouldUpdateValue: true)
        }
        return nil
    }
    
    
    //Private methods/properties
    private var numberOfBuckets: Int
    private var arr: [Node<(Key, Value?)>?]
    
    private func toArr() -> [(Key, Value)] {
        var finalArr = [(Key, Value)]()
        for element in arr.flatMap({$0}) {
            var currentNode: Node? = element
            while currentNode != nil {
                let (key, value) = currentNode!.val
                if value != nil {
                    finalArr.append((key, value!))
                }
                currentNode = currentNode?.next
            }
        }
        return finalArr
        
    }
    private func findInLinkedList(_ newValue: Value?, forKey lookupKey: Key, shouldUpdateValue: Bool) -> Value? {
        let hashValue = lookupKey.hashValue
        let bucket = hashValue % numberOfBuckets
        var currentNode = arr[bucket]!
        repeat {
            let (currentKey, oldValue) = currentNode.val
            if currentKey == lookupKey {
                if shouldUpdateValue {
                    currentNode.val = (currentKey, newValue)
                }
                return oldValue
            }
            if currentNode.next != nil {currentNode = currentNode.next!}
        } while currentNode.next != nil
        
        //Check for last value
        let (currentKey, oldValue) = currentNode.val
        if currentKey == lookupKey {
            if shouldUpdateValue {
                currentNode.val = (currentKey, newValue)
            }
            return oldValue
        }
        //Add new value if appropriate at the end
        if shouldUpdateValue {
            currentNode.next = Node(val: (lookupKey, newValue))
        }
        return nil
        
        for node in arr[bucket]! {
            let (currentKey, currentValue) = node.val
            if currentKey == lookupKey {
                if shouldUpdateValue {
                    currentNode.val = (currentKey, newValue)
                }
                return currentValue
            }
        }
        
    }
    //Sequence conformance
    
    
}

var dict = ["a": 4]
dict["b"] = nil
var myMap = Hashmap<String,Int>(buckets: 5)
/*
myMap.updateValue(8, forKey: "a")

let b = myMap.updateValue(9, forKey: "a")
myMap["a"]
myMap.updateValue(3, forKey: "a")
myMap["a"] = 5

myMap["a"]
"a".hashValue
"i".hashValue
"e".hashValue
"j".hashValue
"k".hashValue
*/


myMap["i"] = 10
myMap["k"] = 42
myMap["20"] = 64


myMap["20"]

myMap.values


var myNode: Node<Int> = Node(val: 3)
myNode.next = Node(val: 4)
myNode.next?.next = Node(val: 5)

for node in myNode {
    print(node.val)
}
for node in myNode {
    print(node.val)
}

