//: Playground - noun: a place where people can play

import UIKit

class TreeNode<T>: CustomStringConvertible {
    var key: T
    var left: TreeNode?
    var right: TreeNode?
    init(key: T) {
        self.key = key
    }
    var description: String {
        return "Node with key: \(self.key)"
    }
}

let root = TreeNode<String>(key: "a")
let nodeTwo = TreeNode<String>(key: "b")
let nodeThree = TreeNode<String>(key: "c")
let nodeFour = TreeNode<String>(key: "d")
let nodeFive = TreeNode<String>(key: "e")

root.left = nodeTwo
root.right = nodeThree

//nodeFour.left = TreeNode(key: 45)

//nodeThree.left = TreeNode(key: 10)
//nodeThree.left?.left = TreeNode(key: 15)
//nodeThree.left?.left?.left = TreeNode(key: 20)

nodeTwo.left = nodeFour
nodeTwo.right = nodeFive

class LLNode<Key> {
    let val: Key
    var next: LLNode?
    init(val: Key) {
        self.val = val
    }
}
struct Queue<T> {
    private var head: LLNode<T>?
    private var tail: LLNode<T>?
    var isEmpty: Bool {
        return head == nil
    }
    mutating func enQueue(_ newElement: T) {
        let newNode = LLNode(val: newElement)
        guard let tail = tail else {
            self.head = newNode
            self.tail = newNode
            return
        }
        tail.next = newNode
        self.tail = newNode
    }
    mutating func deQueue() -> T? {
        guard let oldHead = head else {
            return nil
        }
        self.head = oldHead.next
        if oldHead.next == nil {
            self.tail = nil
        }
        return oldHead.val
    }
    func peek() -> T? {
        return self.head?.val
    }
}


func breadthFirstPrintTree<T>(with root: TreeNode<T>) {
    var myQueue = Queue<TreeNode<T>>()
    myQueue.enQueue(root)
    while !myQueue.isEmpty {
        //deQueue
        let currentNode = myQueue.deQueue()!
        print(currentNode)
        //enqueue children
        if let leftChild = currentNode.left {
            myQueue.enQueue(leftChild)
        }
        if let rightChild = currentNode.right {
            myQueue.enQueue(rightChild)
        }
    }
}

//breadthFirstPrintTree(with: root)

enum OrderType {
    case inOrder, preOrder, postOrder
}

func dfsHelper<T>(root: TreeNode<T>, order: OrderType) {
    switch order {
    case .inOrder:
        inOrderdepthFirstSearchPrintTree(with: root)
    case .preOrder:
        preOrderdepthFirstSearchPrintTree(with: root)
    case .postOrder:
        postOrderdepthFirstSearchPrintTree(with: root)
    }
}

func preOrderdepthFirstSearchPrintTree<T>(with root: TreeNode<T>?) {
    guard let root = root else { return }
    print(root)
    preOrderdepthFirstSearchPrintTree(with: root.left)
    preOrderdepthFirstSearchPrintTree(with: root.right)
    return
}

func inOrderdepthFirstSearchPrintTree<T>(with root: TreeNode<T>?) {
    guard let root = root else { return }
    inOrderdepthFirstSearchPrintTree(with: root.left)
    print(root)
    inOrderdepthFirstSearchPrintTree(with: root.right)
    return
}

func postOrderdepthFirstSearchPrintTree<T>(with root: TreeNode<T>?) {
    guard let root = root else { return }
    postOrderdepthFirstSearchPrintTree(with: root.left)
    postOrderdepthFirstSearchPrintTree(with: root.right)
    print(root)
    return
}


dfsHelper(root: root, order: .inOrder)


enum BinaryTree<T> {
    case empty
    indirect case node(BinaryTree, T, BinaryTree)
}

let rootTwo = BinaryTree.node(BinaryTree.empty, 5, BinaryTree.empty)

func process(arr: Array<Any>) {
    
}


