//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


var walden = String(describing: [2,3,4])
var subWalden = walden[walden.index(after: walden.startIndex)...]
walden.replacingOccurrences(of: subWalden, with: walden)

let favoriteComposer = "J. S. Bach"

