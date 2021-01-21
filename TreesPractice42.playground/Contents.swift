////: Playground - noun: a place where people can play
//
//import UIKit
//
//var str = "Hello, playground"
//
class TreeNode<T> {
    var key: T
    var left: TreeNode?
    var right: TreeNode?
    init(key: T) {
        self.key = key
    }
}
//
//
//let root = TreeNode(key: 1)
//let nodeTwo = TreeNode(key: 2)
//let nodeThree = TreeNode(key: 3)
//let nodeFour = TreeNode(key: 4)
//let nodeFive = TreeNode(key: 5)
//
//root.left = nodeTwo
//root.right = nodeThree
//nodeTwo.left = nodeFour
//nodeTwo.right = nodeFive
//
//class LLNode<Key> {
//    let val: Key
//    var next: LLNode?
//    init(val: Key) {
//        self.val = val
//    }
//}
//
//struct Queue<T> {
//    private var head: LLNode<T>?
//    private var tail: LLNode<T>?
//    var isEmpty: Bool {
//        return head == nil
//    }
//    mutating func enQueue(_ newElement: T) {
//        let newNode = LLNode(val: newElement)
//        guard let tail = tail else {
//            self.head = newNode
//            self.tail = newNode
//            return
//        }
//        tail.next = newNode
//        self.tail = newNode
//    }
//    mutating func deQueue() -> T? {
//        guard let oldHead = head else {
//            return nil
//        }
//        self.head = oldHead.next
//        if oldHead.next == nil {
//            self.tail = nil
//        }
//        return oldHead.val
//    }
//    func peek() -> T? {
//        return self.head?.val
//    }
//}
//
//func bfs<T>(root: TreeNode<T>) {
//    var myQueue = Queue<TreeNode<T>>()
//    myQueue.enQueue(root)
//    while !myQueue.isEmpty {
//        let visitedElement = myQueue.deQueue()!
//        print(visitedElement.key)
//        if let leftChild = visitedElement.left {
//            myQueue.enQueue(leftChild)
//        }
//        if let rightChild = visitedElement.right {
//            myQueue.enQueue(rightChild)
//        }
//    }
//}
//
//
//func dfs<T>(root: TreeNode<T>?, process: (T) -> Void = {print($0)}) {
//    guard let root = root else { return }
//    dfs(root: root.left, process: process)
//    dfs(root: root.right, process: process)
//    process(root.key)
//}
//
//dfs(root: root)
//
struct Point: Hashable {
    var hashValue: Int {
        return x.hashValue + y.hashValue
    }
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    let x: Int
    let y: Int
}

var dict = [Point: Int]()

func graphPaths(root: TreeNode<Point> = TreeNode(key: Point(x: 0, y: 0)), target: Point) -> Int {
    if root.key == target { return 1 }
    if root.key.x > target.x || root.key.y > target.y { return 0 }
    let right = TreeNode(key: Point(x: root.key.x + 1, y: root.key.y))
    let down = TreeNode(key: Point(x: root.key.x, y: root.key.y + 1))
    return graphPaths(root: right, target: target) + graphPaths(root: down, target: target)
}

graphPaths(target: Point(x: 2, y: 2))

