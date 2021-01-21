import UIKit

//func constantTime(arr: [String]) {
//    guard arr.count > 0 else {
//        return
//    }
//    print(arr[0])
//}
//
//
//func linearTime(arr: [String]) {
//    for string in arr {
//        print(string)
//    }
//}
//
//let singleElementArr = ["a"]
//let tenElementArr = Array.init(repeating: "a", count: 10)
//let hundredElementArr = Array.init(repeating: "a", count: 100)
//let millionElementArr = Array.init(repeating: "a", count: 1_000_000)

//Print out who selected which character.  Two players can select the same character.
func quadraticTime(arr: [String]) {
    for stringOne in arr {
        for stringTwo in arr {
            print("Player One: \(stringOne), Player Two: \(stringTwo)")
        }
    }
}

quadraticTime(arr: ["Agnes"])
