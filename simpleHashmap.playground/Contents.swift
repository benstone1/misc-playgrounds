//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
/*
struct Hashmap<Key: Hashable, Value> {
    init(buckets: Int) {
        self.numberOfBuckets = buckets
        self.arr = Array(repeatElement([], count: buckets))
    }
    var keys: [Key] {
        return self.toArr().map{$0.0}
    }
    var values: [Value] {
        return self.toArr().map{$0.1}
    }
    
    private var numberOfBuckets: Int
    private var arr: [[(Key, Value)]]
    
    subscript(_ lookupKey: Key) -> Value? {
        get {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (k,v) in innerArr {
                if k.hashValue == hashValue {
                    return v
                }
            }
            return nil
        }
        set(newValue) {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (index, (k, _)) in innerArr.enumerated() {
                print("at index: \(index)")
                if k.hashValue == hashValue {
                    if let newValue = newValue {
                        self.arr[bucket][index] = (k, newValue)
                    } else {
                        self.arr[bucket].remove(at: index)
                    }
                }
            }
            if let newValue = newValue {
                self.arr[bucket].append((lookupKey, newValue))
            }
        }
    }
    func toArr() -> [(Key, Value)] {
        var arr = [(Key, Value)]()
        for innerArr in self.arr {
            for element in innerArr {
                arr.append(element)
            }
        }
        return arr
    }
}


var myDict = Hashmap<String, Int>(buckets: 1)

//myDict["a"] = 1
//myDict["b"] = 2
//myDict["c"] = 3
//myDict["d"] = 4
//myDict["e"] = 5
//myDict["f"] = 6
//
//myDict.toArr()

*/


let myBool = true
myBool.hashValue
false.hashValue

"a".hashValue

"abc".hashValue
"cba".hashValue
"bbb".hashValue
"aad".hashValue

struct HashMap<Key: Hashable, Value> {
    private var arr: [[(Key, Value)]]
    private var numberOfBuckets: Int
    private let maxLoadFactor = 0.8 //arbitrary
    private var count: Int = 0 {
        didSet {
            if loadFactor > maxLoadFactor {
                resizeArr()
            }
        }
    }

    mutating func resizeArr() {
        print("resizing", loadFactor, numberOfBuckets, count)
        var newHashMap = HashMap(bucketNum: numberOfBuckets * 2)
        for (k,v) in self.toArr() {
            newHashMap[k] = v
        }
        self = newHashMap
    }
    
    private var loadFactor: Double {
        return  Double(count) / Double(numberOfBuckets)
    }
    init(bucketNum: Int) {
        self.numberOfBuckets = bucketNum
        self.arr = Array(repeatElement([], count: bucketNum))
    }
    
    var keys: [Key] {
        return self.toArr().map{$0.0}
    }
    var values: [Value] {
        return self.toArr().map{$0.1}
    }
    
    func toArr() -> [(Key, Value)] {
        var arr = [(Key, Value)]()
        for innerArr in self.arr {
            for element in innerArr {
                arr.append(element)
            }
        }
        return arr
    }
    
    subscript(_ lookupKey: Key) -> Value? {
        get {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (index, (k,v)) in innerArr.enumerated() {
                print("Looking at index: \(index) to get \(lookupKey)")
                if k == lookupKey {
                    return v
                }
            }
            return nil
        }
        set(newValue) {
            let hashValue = lookupKey.hashValue
            let bucket = hashValue % numberOfBuckets
            let innerArr = self.arr[bucket]
            for (index, (k,_)) in innerArr.enumerated() {
                print("Looking at index: \(index) to insert \(newValue)")
                if k == lookupKey {
                    if let newVal = newValue {
                        self.arr[bucket][index] = (k, newVal)
                    } else {
                        self.arr[bucket].remove(at: index)
                        count -= 1
                    }
                    return
                }
            }
            if let newVal = newValue {
                self.arr[bucket].append((lookupKey, newVal))
                count += 1
            }
        }
    }
}

var myDict: HashMap<String, Int> = HashMap(bucketNum: 1)

myDict["a"] = 11
myDict["b"] = 22
myDict["c"] = 33
myDict["d"] = 44
myDict["e"] = 55
myDict["f"] = 66

myDict.toArr()

let allText =
"""
blah blah

"""

