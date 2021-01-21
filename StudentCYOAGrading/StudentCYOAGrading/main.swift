

//

//  main.swift

//  On_the_road

//

//  Created by Clint Mejia on 8/19/17.

//  Copyright © 2017 Clint Mejia. All rights reserved.

//




import Foundation




//ASCII art




print(" ██████╗ ███╗   ██╗    ████████╗██╗  ██╗███████╗    ██████╗  ██████╗  █████╗ ██████╗")

print("██╔═══██╗████╗  ██║    ╚══██╔══╝██║  ██║██╔════╝    ██╔══██╗██╔═══██╗██╔══██╗██╔══██╗")

print("██║   ██║██╔██╗ ██║       ██║   ███████║█████╗      ██████╔╝██║   ██║███████║██║  ██║")

print("██║   ██║██║╚██╗██║       ██║   ██╔══██║██╔══╝      ██╔══██╗██║   ██║██╔══██║██║  ██║")

print("╚██████╔╝██║ ╚████║       ██║   ██║  ██║███████╗    ██║  ██║╚██████╔╝██║  ██║██████╔╝")

print(" ╚═════╝ ╚═╝  ╚═══╝       ╚═╝   ╚═╝  ╚═╝╚══════╝    ╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝╚═════╝")




var gameOver = "\n \n Game over!"




//User input 1

print("\n \n You’re sitting in your car, waiting for the traffic light to turn green. Type \"wait\" to continue")

let proceed = readLine()!




switch proceed {
    
case "wait" :
    
    print("All of sudden the radio plays “Despacito”, the song you HATE with a passion!")
    
default:
    
    break
    
}




//User input 2

print("\n Cover your ears! Type \"cover ears\"")

var coverEars: String = readLine()!




switch coverEars {
    
case "cover ears" :
    
    print("You narrowly escape certain musical death by covering your ears. A few seconds pass and you regain your equilibrium. You reach over to the radio to the change the station. \n \n Choose what direction to turn the radio dial. \"left\", \"right\" or \"turn it off\"")
    
default:
    
    print("For some unknown reason you hesitate to cover you ears. You feel woozy and collapse. \(gameOver)")
    
    //if "coverEars is not typed correctly default will execute
    
}




//User input 3

var radioDial = readLine()!




if radioDial == "left" {
    
    print("You're greeted with a more pleasant song. A couple of seconds later the traffic light turns green. Finally! \n \n Should you turn left or right? Or, just go straight?")
    
}
    
else if radioDial == "right" {
    
    print("Just your luck! You land on a station that's playing \"Despacito!\" Damn you, cruel world! \(gameOver)")
    
}
    
else {
    
    print("You fumble over the radio dial. Your ears begin to bleed. \(gameOver)")
    
}




//User input 4

//A scenario within a scenerio

var firstIntersection: String = readLine()!

var nextScenario = "A few minutes later, on your journey home, you see a female hitchhiker standing next to a broken down vehicle. Being the nice and selfless person that you are you decide to stop and give her a ride. After thanking you profusely, the hitchhiker introduces herself as Elizabeth. \n \n Type a male name:"




if firstIntersection == "left" {
    
    print("You make a left turn and find yourself at a dead end. Nice one, Magellan!\(gameOver)")
    
}
    
else if firstIntersection == "straight" {
    
    print("You gently accelerate past the intersection. \(nextScenario)")
    
}
    
else if firstIntersection == "right" {
    
    //mini scenario
    
    print("You make a right turn, while humming to the song on the radio. As you're approaching the next intersection you notice a warning light go off on your dashboard. The tire pressure is low! \n \n Type: \"check the tire\", or \"keep driving\"?")
    
    var tirePressure = readLine()!
    
    if tirePressure == "keep driving" {
        
        print("\(nextScenario)")
        
    }
        
    else {
        
        print("You carefully exit the vehicle and begin checking all your tires. The front driver side tire looks low, but nothing to be overly concerned about. \n \n Type: \"just drive \" OR \"MacGyver it\"")
        
        var justDrive  = readLine()!
        
        if justDrive == "just drive" {
            
            print("You get back in your car and continue driving. \(nextScenario)")
            
        }
            
        else {
            
            print("You check your pockets and find a pack of Bazooka Joe chewing gum, a lighter, a bandaid and a swiss army knife. You ask yourself, \"What would MacGyver do?\" You gather your materials and go to work on the offending tire. After a few minutes you give up. You made it worse! \(gameOver)")
            
        }
        
    }
    
}




//User input 5

var userInput = readLine()!

var userName = userInput




switch userName {
    
case ("") :
    
    print("A pleasure to meet you, Eizabeth.")
    
    fallthrough
    
default:
    
    print("My name is \(userName). \n \n What time is it? It must be around 11PM. Luckily I was driving this road. It barely sees any traffic at this hour. Elizabeth looks annoyed. She exclaims she is old and tough enough to take care of herself. \"Guess my age?\", Elizabeth asks. \n \n Guess Elizabeth's age:")
    
}







//User input 6

let guessAgeAsString = readLine()!

let guessAgeNumAsInt = Int(guessAgeAsString)!




switch guessAgeNumAsInt {
    
case 0...16 :
    
    print("Congratulations! You just offended Elizabeth. She pulls out a tazer and incapacitates you! \(gameOver)")
    
case 17...23 :
    
    print("Congratulations! Elizabeth saw through your obvious flirting. You creep! Death by awkwardness! \(gameOver)")
    
case 24...40:
    
    print("Thanks! How did you know? \n \n Enter your age:")
    
case 41...Int.max:
    
    print("You should have declined the question. Elizabeth is deeply offended! She gives you the evil eye! \(gameOver)")
    
default:
    
    break
    
}




//User input 7

var userInputAgeAsString = readLine()!

let userAge = Int(userInputAgeAsString)!




switch userAge {
    
case 0..<20 :
    
    print("You're not fooling anyone! \(gameOver)")
    
case 20:
    
    print("20 years old and I'm visiting from... \n \n Type \"NY\" or \"NJ\"")
    
case 21...65 :
    
    print("I'm \(userAge) and I'm from... \n \n Enter the name of a US state:")
    
case 66...Int.max :
    
    print("You just remembered you forgot to take your medications this morning. Your vision starts to fade and you lose consciousness. \(gameOver)")
    
default:
    
    break
    
}




//User input 8

var userInputState = readLine()!

let userState = userInputState

let userInfoTuple = (name: userName, age: userAge, state: userState)




switch userInfoTuple {
    
case (_, 20, "NY") :
    
    print("Wait a minute! You're 20 and from New York?, asks Elizabeth. You nod your head to confim. She looks really happy for some reason. Elizabeth begins to tell you about her younger sister, but it's so hard to focus since she talks so fast. She notices you're not paying attention. \n \n Quick! What is her sister's name? \n \n  Type: \"Barbara\", \"Vicky\" or \"Alice\"")
    
    //leads to trick question
    
case (_, _, "NJ") :
    
    print("Elizabeth gives you a mean look. Isn't that where the Sopranos took place? You nod your head. She begins to talk about her hatred for the show. An argument ensues and you consequently lose control of the car. You both scream as the car rolls off a cliff. \(gameOver)")
    
case (_, 21...65, _) :
    
    print("\(userInfoTuple.2) huh? My mom is from there. \n \n Type: \"lol\", \"lmao\", \"totes\"")
    
default:
    
    break
    
}




//User input 9

var response = readLine()!




if response == "lol" || response == "lmao" {
    
    print("You explain that you love coincidences! Life is a series of coincidences. Just as you were about to explain the meaning of life, you see a mechanic shop. You drop Elizabeth off and wish her good luck.")
    
}
    
else if response == "totes" {
    
    print("Good job! Your attempt to look cool failed! \(gameOver)")
    
}
    
else if response == "Barbara" || response == "Vicky" || response == "Alice" {
    
    print("You blew it! You're terrible with names. Elizabeth is deeply offended and gives you the index finger wag of death. \(gameOver)")
    
}




//User input 10

print("You get back on the road and suddenly feel a sense of urgency. If you had to guess, how long have you been on the road? \n \n Type: the amount of hours:")

var hoursOnTheRoadAsString = readLine()!

let hoursOnTheRoad = Int(userInputAgeAsString)!




switch hoursOnTheRoad {
    
case 0...3 :
    
    print("Correct! Floor it! Get home! On second thought! Don't! Too late. You peel out and lose control of your car. \(gameOver)")
    
case 4...6 :
    
    print("Seems like it. It's getting really late. Time to get to your destination!")
    
case 7...Int.max :
    
    print("That would explain why you're so tired. Your eyelids start to get heavy and you doze off! Good job! You never made it to your destination. \(gameOver)")
    
default:
    
    break
    
}




//User input 11

print("You finally make it to your friends house. As you approach the front door you have a nagging feeling you forgot something. What did you forget? \n \n Type: \"Eggs\", \"Phone\" or \"Nothing\"")

var finalCondition: String = readLine()!




switch finalCondition {
    
case "Eggs" :
    
    print("You had one mission. Time to get back on the road. \(gameOver)")
    
case "Phone" :
    
    print("How could you forget your phone??? How are you going to take your hourly selfie??? \(gameOver)")
    
case "Nothing" :
    
    print("You shake that nagging feeling off your shoulder and the push the doorbell. Your friends greet you and all is well in the world. Or, is it?!")
    
    fallthrough
    
default:
    
    print("\n \n You survived several potentional horrible outcomes. Good job! Thank you for playing!")
    
}
