////: Playground - noun: a place where people can play
//
//import UIKit
//
////var str = "Hello, playground"
////
//////Defining an Enum
////enum Coin {
////    case penny, nickel, dime, quarter
////}
//////Initializing an enum named Coin
////let myCoin: Coin = .penny
////
//////Switching on myCoin
////switch myCoin {
////case .penny:
////    print("You have a penny")
////default:
////    print("No penny")
////}
////
//////Defining an Enum with a Raw Value
////enum NYCBoro: String {
////    case queens = "Queens"
////    case brooklyn = "Brooklyn"
////    case statenIsland = "Staten Island"
////}
////
//////Initialize an enum using its raw value (gives an optional)
////let myBoro = NYCBoro(rawValue: "Brooklyn")
////let noBoro = NYCBoro(rawValue: "Memphis")
////
//////Get the raw value back out
////myBoro?.rawValue
////
//////Defining an Enum with a associate values
////enum FlowerOrder {
////    case roses(count: Int, message: String)
////    case tulips(Int)
////    case lilacs(Int)
////    case noOrder(String)
////}
////
////let orderOne = FlowerOrder.roses(count: 10, message: "For my beloved")
////let orderTwo = FlowerOrder.lilacs(15)
////let orderThree = FlowerOrder.noOrder("Canceled due to rain")
////
////let randomOrder = [orderOne, orderTwo, orderThree][Int(arc4random_uniform(3))]
////
////switch randomOrder {
////case .roses(let number, let message):
////    print("You have an order for \(number) roses with a message: \(message)")
////case .tulips(let number):
////    print("You have an order for \(number) tulips")
////case .lilacs:
////    print("You have an order for some amount of lilacs")
////case .noOrder(let message):
////    print("No order because: \(message)")
////}
//
//
//
////Structs and Classes
//
////Types so far:
///*
//String
//Arrays
//Ints
//Doubles
//Tuples
//Bools
//Dictionaries
//Closures
//(Enumerated Types)
//Sets
//Ranges
//Optional all the of the aboves
//Float
//IntFamily
//Character
//Any
//AnyObject
//Decimal
// */
//
//
//class SomeClass {
//
//}
//
//struct SomeStructure {
//
//}
//
//struct Resolution {
//    var width = 0
//    var height = 0
//}
//
//class VideoMode {
//    var resolution: Resolution = Resolution()
//    var interlaced: Bool = false
//    var frameRate = 0.0
//    var name: String? = nil
//}
//
//let myVideoMode = VideoMode()
//
//let hd = Resolution(width: 1920, height: 1080)
//
//let tenEighty = VideoMode()
//tenEighty.frameRate = 25.0
//tenEighty.interlaced = true
//tenEighty.resolution = hd
//tenEighty.name = "1080i"
//let alsoTenEighty = tenEighty
//alsoTenEighty.frameRate = 30.0
//tenEighty.frameRate = 60.0
//
//
//print("The framerate of tenEighty is \(tenEighty.frameRate)")
//print("The framerate of alsoTenEighty is \(alsoTenEighty.frameRate)")
//
//
////class ExampleOneClass {
////    var propertyOne: String = "thing one"
////    var propertyTwo: String
////}
//
//struct ExampleOneStruct {
//    var propertyOne: String = "thing one"
//    var propertyTwo: String?
//}
//
//let myArr = Array(repeating: 45, count: 3)
//
//let myThing = ExampleOneStruct(propertyOne: "first", propertyTwo: "second")
//let myThing2 = ExampleOneStruct()
//
//struct Size {
//    //Properties
//    var width = 0.0
//    var height = 0.0
//}
//
//
//var yourSize = Size(width: 10.0, height: 4.5)
//let yourSizeCopy = yourSize
//yourSize.width = 40
////print(yourSizeCopy.width)
//
//
//yourSize.height
//
//
//let myMode = VideoMode()
//myMode.resolution.width
//
//var myBool = false
//var myBoolCopy = myBool
//myBool = true
////print(myBoolCopy)
//
//
//
////Instance methods
//
//var myStr = "Hello"
//myStr.lowercased()
//myStr.uppercased()
//
//class Counter {
//    var count = 0
//
//    func increment() {
//        self.count += 1
//    }
//    func increment(by amount: Int) {
//        self.count += amount
//    }
//    func reset() {
//        self.count = 0
//    }
//}
//
//let myCounter = Counter()
//myCounter.count
//myCounter.increment()
//myCounter.count
//myCounter.increment(by: 10)
//myCounter.count
//let alsoMyCounter = myCounter
//alsoMyCounter.count
//myCounter.reset()
//myCounter.count
//
//struct Point {
//    var x = 0.0
//    var y = 0.0
//    //Instance method
//    func isToTheRightOf(x: Double) -> Bool {
//        return self.x > x
//    }
//}
//
//let pointOne = Point(x: 5, y: 8)
//pointOne.isToTheRightOf(x: 4)
//
//struct CounterStruct {
//    var count = 0
//
//    mutating func increment() {
//        self.count += 1
//    }
//    mutating func increment(by amount: Int) {
//        self.count += amount
//    }
//    mutating func reset() {
//        self.count = 0
//    }
//}
//
//
//
//
////Inheritance
//
//class Vehicle {
//    var currentSpeed = 0.0
//    //Computed property
//    var description: String {
//        return "You are going \(self.currentSpeed) miles per hour"
//    }
//    func makeNoise() {
//
//    }
//}
//
//class Bicycle: Vehicle {
//    var hasBasket = false
//    override func makeNoise() {
//        print("Clink Clink")
//    }
//}
//
//class Train: Vehicle {
//    var conductorName = "Tim"
//    override var description: String {
//        return "In a train with \(self.conductorName)"
//    }
//    override func makeNoise() {
//        print("Choo choo")
//    }
//}
//
//let myTrain = Train()
//myTrain.makeNoise()
//myTrain.description
//
//let myVehicle = Vehicle()
//myVehicle.currentSpeed = 15.5
//myVehicle.description
//
//let myBike = Bicycle()
//myBike.hasBasket
//myBike.currentSpeed = 10
//myBike.description
//myBike.makeNoise()
//
//class Tandem: Bicycle {
//    var currentNumberOfPassengers = 2
//}
//
//let myTandemBike = Tandem()
//myTandemBike.currentSpeed
//myTandemBike.makeNoise()
//
//class ThingToSitOn {
//    var comfortLevel: Int
//    init(num: Int) {
//        self.comfortLevel = num
//    }
//
//
// var description: String {
//        switch self.comfortLevel {
//        case -Int.max...4:
//            return "Not comfortable at all!"
//        case 5...8:
//            return "Pretty comfortable"
//        default:
//            return "It's very comfortable!"
//        }
//    }
//}
//
//class Stool: ThingToSitOn {
//    override var description: String {
//        return "This is very comfortable!"
//    }
//}
//
////Initializers (introduction)
//
//let myThingToSitOn = ThingToSitOn(num: 8)
//
//class Rectangle {
//    var width: Int
//    var height: Int
//    let initialArea: Int
//    var currentArea: Int {
//        return self.width * self.height
//    }
//    init(width: Int, height: Int) {
//        self.width = width
//        self.height = height
//        self.initialArea = width * height
//    }
//}
//
//let myRect = Rectangle(width: 7, height: 10)
//
//
//
//struct myClass {
//    var thingOne: Int?
//    var thingTwo: String?
//}
//
//var mysdfkjh = myClass()
//mysdfkjh.thingOne
//
//
//class Animal {
//    var name: String
//    var legs: Int
//    init(name: String, legs: Int) {
//        self.name = name
//        self.legs = legs
//    }
//}
//
//class Bird: Animal {
//    var wingSpan: Double
//    init(wingSpan: Double, legs: Int, name: String) {
//        self.wingSpan = wingSpan
//        super.init(name: name, legs: legs)
//    }
//}
//
//let myHawk = Bird(wingSpan: 3.2, legs: 2, name: "Sparrow Hawk")
//let newHawk = myHawk
//newHawk.name = "Sharp-shinned hawk"
//newHawk.wingSpan = 2.4
//
//print(myHawk.name)
//
//
//


// Create a struct called RGBColor that has 3 properties, red, green, blue that are all of type Double.

// Given the below array of color dictionaries, create an array of RGBColor

let colorDictArray: [[String: Double]] = [["red": 1.0, "green": 0.0, "blue": 0.0],
                                          ["red": 0.0, "green": 1.0, "blue": 0.0],
                                          ["red": 0.0, "green": 0.0, "blue": 1.0],
                                          ["red": 0.6, "green": 0.9, "blue": 0.0],
                                          ["red": 0.2, "green": 0.2, "blue": 0.5],
                                          ["red": 0.5, "green": 0.1, "blue": 0.4]]


struct RGBColor {
    var red: Double
    var green: Double
    var blue: Double
}

var arr: [RGBColor] = []
for dict in colorDictArray {
    guard let redVal = dict["red"],
        let greenVal = dict["green"],
        let blueVal = dict["blue"] else {
        continue
    }
    let newColor = RGBColor(red: redVal, green: greenVal, blue: blueVal)
    arr.append(newColor)
}
//print(arr)

print(colorDictArray.map{RGBColor(red: $0["red"]!,
                                  green: $0["green"]!,
                                  blue: $0["blue"]!)})


// a. Create a class called Movie that has properties for name (String), year (Int), genre (String), cast ([String]), and description (String). Create an instance of your Movie class

let dieHardDict: [String: Any] = ["name": "Die Hard",
                                  "year" : 1987,
                                  "genre": "action",
                                  "cast": ["Bruce Willis", "Alan Rickman"],
                                  "description": "John Mclain saves the day!"]

struct Movie {
    var name: String
    var year: Int
    var genre: String
    var description: String
    var cast: [String]
}

func makeMovie(dict: [String: Any]) -> Movie? {
    guard let name = dict["name"] as? String,
        let year = dict["year"] as? Int,
        let genre = dict["genre"] as? String,
        let description = dict["description"] as? String,
        let cast = dict["cast"] as? [String] else {
            return nil
    }
    return Movie(name: name, year: year, genre: genre, description: description, cast: cast)
}

var movies: [[String:Any]] = [
    [
        "name": "Minions",
        "year": 2015,
        "genre": "animation",
        "cast": ["Sandra Bullock", "Jon Hamm", "Michael Keaton"],
        "description": "Evolving from single-celled yellow organisms at the dawn of time, Minions live to serve, but find themselves working for a continual series of unsuccessful masters, from T. Rex to Napoleon. Without a master to grovel for, the Minions fall into a deep depression. But one minion, Kevin, has a plan."
    ],
    [
        "name": "Shrek",
        "year": 2001,
        "genre": "animation",
        "cast": ["Mike Myers", "Eddie Murphy", "Cameron Diaz"],
        "description": "Once upon a time, in a far away swamp, there lived an ogre named Shrek whose precious solitude is suddenly shattered by an invasion of annoying fairy tale characters. They were all banished from their kingdom by the evil Lord Farquaad. Determined to save their home -- not to mention his -- Shrek cuts a deal with Farquaad and sets out to rescue Princess Fiona to be Farquaad\"s bride. Rescuing the Princess may be small compared to her deep, dark secret."
    ],
    [
        "name": "Zootopia",
        "year": 2016,
        "genre": "animation",
        "cast": ["Ginnifer Goodwin", "Jason Bateman", "Idris Elba"],
        "description": "From the largest elephant to the smallest shrew, the city of Zootopia is a mammal metropolis where various animals live and thrive. When Judy Hopps becomes the first rabbit to join the police force, she quickly learns how tough it is to enforce the law."
    ],
    [
        "name": "Avatar",
        "year": 2009,
        "genre": "action",
        "cast": ["Sam Worthington", "Zoe Saldana", "Sigourney Weaver"],
        "description": "On the lush alien world of Pandora live the Na\"vi, beings who appear primitive but are highly evolved. Because the planet\"s environment is poisonous, human/Na\"vi hybrids, called Avatars, must link to human minds to allow for free movement on Pandora. Jake Sully, a paralyzed former Marine, becomes mobile again through one such Avatar and falls in love with a Na\"vi woman. As a bond with her grows, he is drawn into a battle for the survival of her world."
    ],
    [
        "name": "The Dark Knight",
        "year": 2008,
        "genre": "action",
        "cast": ["Christian Bale", "Heath Ledger", "Aaron Eckhart"],
        "description": "With the help of allies Lt. Jim Gordon and DA Harvey Dent, Batman has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism."
    ],
    [
        "name": "Transformers",
        "year": 2007,
        "genre": "action",
        "cast": ["Shia LaBeouf", "Megan Fox", "Josh Duhamel"],
        "description": "The fate of humanity is at stake when two races of robots, the good Autobots and the villainous Decepticons, bring their war to Earth. The robots have the ability to change into different mechanical objects as they seek the key to ultimate power. Only a human youth, Sam Witwicky can save the world from total destruction."
    ],
    [
        "name": "Titanic",
        "year": 1997,
        "genre": "drama",
        "cast": ["Leonardo DiCaprio", "Kate Winslet", "Billy Zane"],
        "description": "The ill-fated maiden voyage of the R.M.S. Titanic; the pride and joy of the White Star Line and, at the time, the largest moving object ever built. She was the most luxurious liner of her era -- the \"ship of dreams\" -- which ultimately carried over 1,500 people to their death in the ice cold waters of the North Atlantic in the early hours of April 15, 1912."
    ],
    [
        "name": "The Hunger Games",
        "year": 2012,
        "genre": "drama",
        "cast": ["Jennifer Lawrence", "Josh Hutcherson", "Liam Hemsworth"],
        "description": "Katniss Everdeen voluntarily takes her younger sister\"s place in the Hunger Games, a televised competition in which two teenagers from each of the twelve Districts of Panem are chosen at random to fight to the death."
    ],
    [
        "name": "American Sniper",
        "year": 2014,
        "genre": "drama",
        "cast": ["Bradley Cooper", "Sienna Miller", "Kyle Gallner"],
        "description": "Navy S.E.A.L. sniper Chris Kyle\"s pinpoint accuracy saves countless lives on the battlefield and turns him into a legend. Back home to his wife and kids after four tours of duty, however, Chris finds that it is the war he can\"t leave behind."
    ]
]


var movieList: [Movie?] = []
for movieDict in movies {
    let newMovie = makeMovie(dict: movieDict)
    movieList.append(newMovie)
}
print(movies.map{makeMovie(dict: $0)})
