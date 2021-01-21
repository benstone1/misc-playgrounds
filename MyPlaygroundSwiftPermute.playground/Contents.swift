//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

/*
 def permute(self, nums):
 perms = [[]]
 for n in nums:
 new_perms = []
 for perm in perms:
 for i in xrange(len(perm)+1):
 new_perms.append(perm[:i] + [n] + perm[i:])   ###insert n
 perms = new_perms
 return perms
*/
 
 
func permute(nums: [Int]) -> [[Int]] {
    var perms = [[Int]]()
    for n in nums {
        print(n)
        var new_perms = [[Int]]()
        for i in nums {
            new_perms.append([i])
            break
        }
        perms = new_perms
        
        for perm in perms {
            print("HIHIE")
            for i in 1...(perm.count + 1) {
                let firstArr = Array(perm[0..<i])
                let secondArr = [n]
                let thirdArr = Array(perm[i..<perm.count])
                let newArr = firstArr + secondArr + thirdArr
                print(firstArr, secondArr, thirdArr)
                print(newArr)
                new_perms.append(newArr)
            }
        }
        perms = new_perms
    }
    return perms
}


let myInt = 6

switch myInt {
case _ where myInt > 5:
    print("hi'")
default:
    break
}
