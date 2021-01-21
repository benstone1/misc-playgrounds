//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

func median(a: Int, b: Int, c: Int) -> Int {
    if (a < b && a > c) || (a < c) && (a > b) {
        return a
    } else if (b < a && b > c) || (b < c && b > a) {
        return b
    } else {
        return c
    }
}

func medianTwo(a: Int, b: Int, c: Int) -> Int {
    if (b < c && (b...c).contains(a)) || (c <= b && (c...b).contains(a)) {
        return a
    }
    if (a < c && (a...c).contains(b)) || (c <= a && (c...a).contains(b)) {
        return b
    }
    return c
}

func medianThree(a: Int, b: Int, c: Int) -> Int {
    var counters: (a: Int, b: Int, c: Int) = (0,0,0)
    if a < b {
        counters.a -= 1
        counters.b += 1
    } else {
        counters.a += 1
        counters.b -= 1
    }
    if a < c {
        counters.a -= 1
        counters.c += 1
    } else {
        counters.a += 1
        counters.c -= 1
    }
    if b < c {
        counters.b -= 1
        counters.c += 1
    } else {
        counters.b += 1
        counters.c -= 1
    }
    if counters.a == 0 {
        return a
    } else if counters.b == 0 {
        return b
    } else {
        return c
    }
}
