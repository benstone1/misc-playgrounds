func makeChange(target: Int, _ currencyArr: [Int], _ length: Int = 0) -> (change: [Int], length: Int)? {
    if target == 0 {
        return ([], length)
    }
    if target < 0 {
        return nil
    }
    var bestPath: ([Int], Int)?
    var currentMinPath = Int.max
    for bill in currencyArr {
        if let (otherBills, pathLength) = makeChange(target: target - bill, currencyArr, length + 1) {
            let path = [bill] + otherBills
            if pathLength < currentMinPath {
                bestPath = (path,pathLength)
                currentMinPath = pathLength
            }
        }
    }
    print(target, length)
    return bestPath
}

//makeChange(target: 17, [2,10,3])

var changeDict = [Int: [Int]]()

func makeChangeMemoized(target: Int, _ currencyArr: [Int]) -> [Int]? {
    //base cases
    if target == 0 {
        return []
    }
    if target < 0 {
        return nil
    }
    var bestPath: [Int]?
    var currentMinPath = Int.max
    //Find the ways to create change by looking at each bill
    for bill in currencyArr {
        var result: [Int]?
        //Check if the path has been stored
        if let otherBills = changeDict[target - bill] {
            result = otherBills
        }
            //Make recursive call if path has not yet been stored
        else if let otherBills = makeChangeMemoized(target: target - bill, currencyArr) {
            result = otherBills
        }
        //If there is a viable path to make change, check if the length is smaller than other paths.  If so, save this path.
        if result != nil {
            let path = [bill] + result!
            if path.count < currentMinPath {
                bestPath = path
                currentMinPath = path.count
            }
        }
    }
    //Memoize the path to the end
    if bestPath != nil {
        changeDict[target] = bestPath!
    }
    return bestPath
}
makeChangeMemoized(target: 16, [1,5,9])