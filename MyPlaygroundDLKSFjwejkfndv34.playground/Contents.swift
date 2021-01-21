//var completionHandlers: [() -> Void] = []


func someFunctionWithEscapingClosure(completionHandler: @escaping () -> Void) {
    var completionHandlers: [() -> Void] = []
    completionHandlers.append(completionHandler)
}

someFunctionWithEscapingClosure {
    print("hi")
}

func divide(a: Int, b: Int) -> Int {
    return a/b
}

func divide(a: Int, b: Int) -> Double {
    return Double(a) / Double(b)
}

var x: Double = divide(a: 5, b: 2)

let a = Int.allZeros
let b = Int.allZeros
print(a * 4)