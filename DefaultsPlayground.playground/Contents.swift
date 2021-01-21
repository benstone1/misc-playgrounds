//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func recurse() {
    print("hi")
    //recurse()
}

//recurse()


/*
func factorial(n: Int) -> Int {
    var product = 1
    for currentNum in 1...n {
        product *= currentNum
    }
    return product
}

func fancyFactorial(n: Int) -> Int {
    return (1...n).reduce(1, *)
}

func recursiveFactorial(n: Int) -> Int {
    guard n > 1 else {return 1}
    return n * recursiveFactorial(n: n - 1)
}

recursiveFactorial(n: 5)

var fibValues = [Int: Int]()

func recursiveFibDynamicProgramming(n: Int) -> Int {
    guard n > 1 else { return 1 }
    let nthFibNumber = recursiveFibDynamicProgramming(n: n - 1) + recursiveFibDynamicProgramming(n: n - 2)
    fibValues[n] = nthFibNumber
    return nthFibNumber
}

recursiveFactorial(n: 18)
"The powerful programming language that is also easy to learn. Swift is a powerful and intuitive programming language for macOS, iOS, watchOS and tvOS.".count
*/
