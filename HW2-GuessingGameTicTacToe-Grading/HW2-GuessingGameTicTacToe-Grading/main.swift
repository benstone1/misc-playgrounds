//Guessing Game

import Foundation





var game = 1



while game == 1 {
    
    
    
    let randomNumber = (Int(arc4random_uniform(50)))
    
    
    
    print("Before we begin. What do I call you?")
    
    
    
    let userName = readLine()!
    
    
    
    print("Welcome,\(userName). I am thinking of a number between 1 and 50. Can you guess what it is?")
    
    
    
    var guesses = 10
    
    var tries = 0
    
    
    
    while guesses > 0 {
        
        
        
        print("Pick a number")
        
        
        
        let inputNumber = readLine()!
        
        let number = Int(inputNumber)!
        
        
        
        if number < randomNumber {
            
            guesses -= 1
            
            tries += 1
            
            print("Your guess is too low! You have \(guesses) guesses left")
            
            
            
            if guesses == 0{
                
                print("You almost had it! \(randomNumber) was the number I picked")
                
                
                
            } else {
                
                continue
                
            }
            
            
            
        } else if number > randomNumber {
            
            
            
            guesses -= 1
            
            tries += 1
            
            print("Your guess is too high! You have \(guesses) guesses left")
            
            
            
            
            
            if guesses == 0 {
                
                print("You almost had it! \(randomNumber) was the number I picked")
                
                
                
            } else {
                
                continue
                
            }
            
            
            
        } else {
            
            
            
            print("You guessed right! You guessed the number in \(tries) tries")
            
            guesses = 0
            
            
            
        }
        
        
        
        
        
        
        
        print("Would you like to play again, \"Yes\" or \"No\"?")
        
        let playAgain = readLine()!
        
        
        
        switch playAgain{
            
            
            
        case "yes","Yes", "YES":
            
            break
            
            
            
        default:
            
            print("Thanks for playing!")
            
            game -= 1
            
        }
        
    }
    
}



//TicTacToe

import Foundation



print("Welcome, Let's play a game of Tic-Tac-Toe. Player 1, your name?")

var playerOne = readLine()!

print("Welcome,\(playerOne), Who will you be facing?")

var playerTwo = readLine()!

print("Welcome,\(playerTwo). Good luck to both of you!")

sleep(2)



let blankSpace = "-"

let playerX = "X"

let playerO = "O"



var winX = [["A", "X", "X", "X"]]



var board = [[" ", "1", "2", "3"], ["A", "_", "_", "_",], [ "B", "_", "_", "_"], ["C", "_", "_", "_"]]

print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")

print("--------------")

print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")

print("--------------")

print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")

print("--------------")

print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")



print("This is the game board. You will use a combination of A-C and 1-3 to place your X's and O's, ex. (B2 for center) \(playerOne), Where would you like to make your first move?")

var turn = 9

game = 1



while game == 1 {
    
    
    
    let playerOneMove = readLine()!
    
    
    
    if turn > 0 {
        
        switch playerOneMove {
            
            
            
        case "A1":
            
            board[1][1] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "A2":
            
            board[1][2] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "A3":
            
            board[1][3] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "B1":
            
            board[2][1] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "B2":
            
            board[2][2] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "B3":
            
            board[2][3] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "C1":
            
            board[3][1] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "C2":
            
            board[3][2] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        case "C3":
            
            board[3][3] = playerX
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        default:
            
            print("Not a valid option")
            
            continue
            
        }
        
        
        
        if board[1] == ["A", "X", "X", "X"] || board[2] == ["B", "X", "X", "X"] || board[3] == ["C", "X", "X", "X"]{
            
            print("\(playerOne) wins!")
            
            turn = 0
            
            break
            
            
            
        } else {
            
            print("\(playerTwo)'s turn.")
            
        }
        
        
        
        
        
        let playerTwoMove = readLine()!
        
        
        
        switch playerTwoMove {
            
            
            
        case "A1":
            
            board[1][1] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "A2":
            
            board[1][2] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "A3":
            
            board[1][3] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "B1":
            
            board[2][1] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "B2":
            
            board[2][2] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "B3":
            
            board[2][3] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "C1":
            
            board[3][1] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "C2":
            
            board[3][2] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
            
            
        case "C3":
            
            board[3][3] = playerO
            
            turn -= 1
            
            print(board[0][0],board[0][1],board[0][2],board[0][3], separator: " | ")
            
            print("--------------")
            
            print(board[1][0],board[1][1],board[1][2],board[1][3], separator: " | ")
            
            print("--------------")
            
            print(board[2][0],board[2][1],board[2][2],board[2][3], separator: " | ")
            
            print("--------------")
            
            print(board[3][0],board[3][1],board[3][2],board[3][3], separator: " | ")
            
            
            
        default:
            
            print("Not a valid option")
            
            
            
        }
        
        
        
        if board[1] == ["A", "O", "O", "O"] || board[2] == ["B", "O", "O", "O"] || board[3] == ["C", "O", "O", "O"] {
            
            print("\(playerTwo) wins!")
            
            turn = 0
            
            break
            
            
            
        } else {
            
            print("\(playerOne)'s turn.")
            
        }    
        
    } 
    
}
