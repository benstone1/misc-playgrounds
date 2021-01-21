//: Playground - noun: a place where people can play

import UIKit

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

class BinaryTreeNode {
    var key: Int
    var leftNode: BinaryTreeNode?
    var rightNode: BinaryTreeNode?
    init(key: Int) {
        self.key = key
    }
}

let root = BinaryTreeNode(key: 0)
let nodeOne = BinaryTreeNode(key: 1)
let nodeTwo = BinaryTreeNode(key: 2)
let nodeThree = BinaryTreeNode(key: 3)
let nodeFour = BinaryTreeNode(key: 4)
let nodeFive = BinaryTreeNode(key: 5)
let nodeSix = BinaryTreeNode(key: 6)

root.leftNode = nodeOne
root.rightNode = nodeTwo
nodeOne.leftNode = nodeThree
nodeOne.rightNode = nodeFour
nodeFour.rightNode = nodeSix
nodeTwo.rightNode = nodeFive

//Breadth first traversal

func breadthFirstTraversal(of root: BinaryTreeNode) {
    var processQueue = Queue<BinaryTreeNode>()
    processQueue.enQueue(root)
    while !processQueue.isEmpty {
        let currentNode = processQueue.deQueue()!
        print(currentNode.key)
        if let leftNode = currentNode.leftNode {
            processQueue.enQueue(leftNode)
        }
        if let rightNode = currentNode.rightNode {
            processQueue.enQueue(rightNode)
        }
    }
}

//breadthFirstTraversal(of: root)

//Depth first traversal

func depthFirstTraveral(of treeNode: BinaryTreeNode?) {
    guard let treeNode = treeNode else { return }
    depthFirstTraveral(of: treeNode.leftNode)
    print(treeNode.key)
    depthFirstTraveral(of: treeNode.rightNode)
}

//depthFirstTraveral(of: root)

//class Vertex {
//    let key: String
//    let neighbors = [Vertex]()
//    init(key: String) {
//        self.key = key
//    }
//}

class Vertex {
    let key: String
    var visited: Bool = false
    var edges = [Edge]()
    init(key: String) {
        self.key = key
    }
}

class Edge {
    let weight: Double
    let neighborVertex: Vertex
    init(weight: Double, neighborVertex: Vertex) {
        self.weight = weight
        self.neighborVertex = neighborVertex
    }
}

let rootVertex = Vertex(key: "root")
let vertexOne = Vertex(key: "v-one")
let vertexTwo = Vertex(key: "v-two")
let vertexThree = Vertex(key: "v-three")
let vertexFour = Vertex(key: "v-four")

rootVertex.edges = [
    Edge(weight: 4.3, neighborVertex: vertexOne),
    Edge(weight: 17, neighborVertex: vertexThree),
    Edge(weight: 2, neighborVertex: vertexFour)
    ]

vertexOne.edges = [Edge(weight: 39, neighborVertex: vertexTwo)]
vertexTwo.edges = []

vertexThree.edges = [Edge(weight: 29, neighborVertex: vertexTwo),
    Edge(weight: 8, neighborVertex: vertexFour)]

vertexFour.edges = [Edge(weight: 10, neighborVertex: rootVertex)]


func traverseGraph(startingWith vertex: Vertex) {
    var processQueue = Queue<Vertex>()
    processQueue.enQueue(vertex)
    while !processQueue.isEmpty {
        print("Queue", terminator: ": ")
        processQueue.toArr().forEach{print($0.key, terminator: " ")}
        let currentVertex = processQueue.deQueue()!
        print()
        print("Current vertex: \(currentVertex.key)")
        for edge in currentVertex.edges {
            if edge.neighborVertex.visited == false {
                edge.neighborVertex.visited = true
                processQueue.enQueue(edge.neighborVertex)
            }
        }
    }
}

//traverseGraph(startingWith: rootVertex)

extension Queue {
    func toArr() -> [T] {
        var queueCopy = self
        var arr = [T]()
        while !queueCopy.isEmpty {
            arr.append(queueCopy.deQueue()!)
        }
        return arr
    }
}

struct Point: Comparable, Hashable {
    static func <(lhs: Point, rhs: Point) -> Bool {
        return lhs.x < rhs.x || lhs.y < rhs.y
    }
    static func ==(lhs: Point, rhs: Point) -> Bool {
        return lhs.x == rhs.x && lhs.y == rhs.y
    }
    public var hashValue: Int {
        return x.hashValue ^ y.hashValue
    }
    let x: Int
    let y: Int
    static let zero = Point(x: 0, y: 0)
}

var pathDict = [Point: Int]()

func numberOfPaths(from startPoint: Point = Point.zero, to endPoint: Point) -> Int {
    //base cases
    if startPoint > endPoint { return 0 }
    if startPoint == endPoint { return 1 }
    
    let rightPoint = Point(x: startPoint.x + 1, y: startPoint.y)
    let downPoint = Point(x: startPoint.x, y: startPoint.y + 1)
    //recursive call
    let numberOfRightPaths = pathDict[rightPoint, default: numberOfPaths(from: rightPoint, to: endPoint)]
    pathDict[rightPoint] = numberOfRightPaths
    let numberOfDownPaths = pathDict[downPoint, default: numberOfPaths(from: downPoint, to: endPoint)
]
    pathDict[downPoint] = numberOfDownPaths
    return numberOfRightPaths + numberOfDownPaths
}
numberOfPaths(to: Point(x: 5, y: 5))
