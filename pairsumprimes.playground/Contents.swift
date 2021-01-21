//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"
//array of primes

//find two prime number with a difference of n where each prime is no less than lowerBound and no more than upperBound

func isPrime(num: Int) -> Bool {
    for i in 2..<Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    return true
}

func primes(from lowerBound: Int, to upperBound: Int) -> [Int] {
    var primes = [Int]()
    for possiblePrime in lowerBound...upperBound {
        if isPrime(num: possiblePrime) {
            primes.append(possiblePrime)
        }
    }
    return primes
}


func primePairDiff(difference: Int, lowerBound: Int, upperBound: Int) -> Int? {
    let primeNums = primes(from: lowerBound, to: upperBound)
    var matchingPrimeSet: Set<Int> = []
    for num in primeNums {
        if matchingPrimeSet.contains(num) {
            return num
        }
        let partnerNum = abs(num - difference)
        matchingPrimeSet.insert(partnerNum)
    }
    return nil
}
