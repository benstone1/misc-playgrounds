//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


class Vertex<T: Equatable> {
    var key: T
    var neighbors = [Edge<T>]()
    var visited: Bool = false
    init(key: T) {
        self.key = key
    }
}

class Edge<T: Equatable> {
    var neighbor: Vertex<T>
    var weight: Double
    init(neighbor: Vertex<T>, weight: Double) {
        self.neighbor = neighbor
        self.weight = weight
    }
}

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


let rootVertex = Vertex(key: 1)
let vertexTwo = Vertex(key: 2)
let vertexThree = Vertex(key: 3)
let vertexFour = Vertex(key: 4)
let vertexFive = Vertex(key: 5)


rootVertex.neighbors = [Edge(neighbor: vertexTwo, weight: 52.4),
                        Edge(neighbor: vertexFour, weight: 23.9),
                        Edge(neighbor: vertexFive, weight: 10.3)]

vertexTwo.neighbors = [Edge(neighbor: vertexThree, weight: 93.4)]

vertexThree.neighbors = []

vertexFour.neighbors = [Edge(neighbor: vertexThree, weight: 11.4),
                        Edge(neighbor: vertexFour, weight: 8.4)]

vertexFive.neighbors = [Edge(neighbor: rootVertex, weight: 10)]


func traverseGraph<T>(startingWith vertex: Vertex<T>) {
    var graphQueue = Queue<Vertex<T>>()
    graphQueue.enQueue(vertex)
    while !graphQueue.isEmpty {
        let currentVertex = graphQueue.deQueue()!
        print(currentVertex.key)
        currentVertex.visited = true
        for edge in currentVertex.neighbors {
            let neighbor = edge.neighbor
            if neighbor.visited == false {
                graphQueue.enQueue(edge.neighbor)
            }
        }
    }
}

//traverseGraph(startingWith: rootVertex)

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
    if startPoint == endPoint { return 1 }
    if startPoint > endPoint { return 0 }
    let rightPoint = Point(x: startPoint.x + 1, y: startPoint.y)
    let downPoint = Point(x: startPoint.x, y: startPoint.y + 1)
    let numberOfRightPaths = pathDict[rightPoint, default: numberOfPaths(from: rightPoint, to: endPoint)]
    pathDict[rightPoint] = numberOfRightPaths
    let numberOfDownPaths = pathDict[downPoint, default: numberOfPaths(from: downPoint, to: endPoint)]
    pathDict[downPoint] = numberOfDownPaths
    return numberOfRightPaths + numberOfDownPaths
}

numberOfPaths(to: Point(x: 20, y: 20))
