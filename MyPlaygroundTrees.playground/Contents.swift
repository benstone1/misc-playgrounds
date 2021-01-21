import UIKit

public struct Queue<T> {
  fileprivate var array = [T?]()
  fileprivate var head = 0

  public var isEmpty: Bool {
    return count == 0
  }

  public var count: Int {
    return array.count - head
  }

  public mutating func enqueue(_ element: T) {
    array.append(element)
  }

  public mutating func dequeue() -> T? {
    guard let element = array[guarded: head] else { return nil }

    array[head] = nil
    head += 1

    let percentage = Double(head)/Double(array.count)
    if array.count > 50 && percentage > 0.25 {
      array.removeFirst(head)
      head = 0
    }

    return element
  }

  public var front: T? {
    if isEmpty {
      return nil
    } else {
      return array[head]
    }
  }
}

extension Array {
    subscript(guarded idx: Int) -> Element? {
        guard (startIndex..<endIndex).contains(idx) else {
            return nil
        }
        return self[idx]
    }
}


class TreeNode {
    let val: Int
    var left: TreeNode?
    var right: TreeNode?
    init(val: Int) {
        self.val = val
    }
}

// Depth First Search
func traverse(_ root: TreeNode?) {
    guard let root = root else { return }
    print(root.val) // Pre-order
    traverse(root.left)
    //print(root.val) // In-order
    traverse(root.right)
//    print(root.val) // Post-order
}

func breadthFirstTraverse(_ root: TreeNode?) {
    guard let root = root else { return }
    var queue = Queue<TreeNode>()
    queue.enqueue(root)
    while !queue.isEmpty {
        let currentNode = queue.dequeue()!
        print(currentNode.val)
        if let leftChild = currentNode.left {
            queue.enqueue(leftChild)
        }
        if let rightChild = currentNode.right {
            queue.enqueue(rightChild)
        }
    }
}

let one = TreeNode(val: 1)
let two = TreeNode(val: 2)
let three = TreeNode(val: 3)
let four = TreeNode(val: 4)
let five = TreeNode(val: 5)
let six = TreeNode(val: 6)
let seven = TreeNode(val: 7)
let eight = TreeNode(val: 8)

one.left = two
one.right = three

two.left = four
two.right = five

three.left = six
three.right = seven

six.left = eight

print("Pre-order DFS")
traverse(one)
print("BFS")
breadthFirstTraverse(one)












//class LLNode<T: Equatable>: Equatable, CustomStringConvertible {
//  public var value: T
//  public var next: LLNode?
//
//  var description: String {
//    guard let next = next else { return "nil <- \(value)" }
//    return "\(next) <- \(value)"
//  }
//
//  init(value: T) {
//    self.value = value
//  }
//
//  static func ==(lhs: LLNode, rhs: LLNode) -> Bool {
//    return lhs.value == rhs.value &&
//      lhs.next == rhs.next
//  }
//}
//
//struct Queue<T: Equatable>: CustomStringConvertible {
//  private var head: LLNode<T>? // could be nil
//  private var tail: LLNode<T>? // could be nil
//
//  var description: String {
//    guard let head = head else { return "empty" }
//    return "(Back) \(head) (Front)"
//  }
//
//  public var isEmpty: Bool {
//    return head == nil
//  }
//
//  public var peek: T? { // read-only property
//    return head?.value
//  }
//
//  public mutating func enqueue(_ value: T) {
//    let newNode = LLNode(value: value)
//    guard let lastNode = tail else {
//      head = newNode
//      tail = newNode
//      return
//    }
//    lastNode.next = newNode
//    tail = newNode
//  }
//
//  // reminder: check for empty state first
//  // remove item from the front of the queue
//  // modify the head next value
//  // return the value removed (T?)
//  @discardableResult
//  public mutating func dequeue() -> T? {
//    var valueRemoved: T?
//    guard !isEmpty else { return valueRemoved }
//    valueRemoved = head?.value
//    if head == tail { tail = nil }
//    head = head?.next
//    return valueRemoved
//  }
//}
//
//
//class TreeNode: Equatable {
//    static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
//        return lhs.val == rhs.val
//    }
//
//    let val: Int
//    var left: TreeNode?
//    var right: TreeNode?
//    init(val: Int) {
//        self.val = val
//    }
//}
//
//// depth first search
//
//func traverse(_ root: TreeNode?) {
//    guard let root = root else { return }
//    print(root.val)
//    traverse(root.left)
//    traverse(root.right)
//}
//
//
//// breadth first search
//
//func bst(_ root: TreeNode?) {
//    var q = Queue<TreeNode>()
//    guard let root = root else { return }
//    q.enqueue(root)
//    while !q.isEmpty {
//        let currentNode = q.dequeue()!
//        print(currentNode.val)
//        if let left = currentNode.left {
//            q.enqueue(left)
//        }
//        if let right = currentNode.right {
//            q.enqueue(right)
//        }
//    }
//}
//




















let ten = TreeNode(val: 10)
let five = TreeNode(val: 5)
let negThree = TreeNode(val: -3)
let threeOne = TreeNode(val: 3)
let two = TreeNode(val: 2)
let eleven = TreeNode(val: 11)
let threeTwo = TreeNode(val: 3)
let negTwo = TreeNode(val: -2)
let one = TreeNode(val: 1)

ten.left = five
ten.right = negThree

five.left = threeOne
five.right = two

negThree.right = eleven

threeOne.left = threeTwo
threeOne.right = negTwo

two.right = one



bst(ten)



//
//
//func pathSum(_ root: TreeNode?, _ sum: Int) -> Int {
//    guard let root = root else { return 0 }
//    return pathSumRecursuive(root, sum) + pathSum(root.left, sum) + pathSum(root.right, sum)
//}
//
//func pathSumRecursuive(_ root: TreeNode?, _ sum: Int) -> Int {
//    guard let root = root else { return 0 }
//    if root.val == sum { return 1 }
//    return pathSumRecursuive(root.left, sum - root.val) + pathSumRecursuive(root.right, sum - root.val)
//
//}
//
//print(pathSum(ten, 8))



