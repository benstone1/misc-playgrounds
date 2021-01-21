import Foundation

var guessingGameShouldContinue = false
var ticTacToeShouldContinue = false

print("What game would you like to play?")
print("1: Guessing Game.  2: Tic-tac-toe.")
let input = readLine()
if let input = input {
    if input == "1" {
        guessingGameShouldContinue = true
    } else if input == "2" {
        ticTacToeShouldContinue = true
    }
    while guessingGameShouldContinue {
        let targetNum = Int(arc4random_uniform(100))
        var guessesRemaining = 10
        print("Guess my number!")
        while guessesRemaining > 0 {
            print("You have \(guessesRemaining) guesses")
            let input = readLine()
            if let safeInput = input, let safeNum = Int(safeInput) {
                if safeNum == targetNum {
                    print("You win!  My number was \(targetNum)")
                    print("You had \(guessesRemaining) guesses remaining.")
                    break
                } else if safeNum < targetNum {
                    print("Your guess of \(safeNum) is lower than my number")
                } else if safeNum > targetNum {
                    print("Your guess of \(safeNum) is higher than my number")
                }
                guessesRemaining -= 1
                if guessesRemaining == 0 {
                    print("You lose!")
                    print("My number was \(targetNum)")
                }
            } else {
                print("Enter a valid Integer")
                continue
            }
        }
        print("Play again? (y/n)")
        let input = readLine()
        if let input = input {
            if input == "n" {
                guessingGameShouldContinue = false
            }
        }
    }
    
    while ticTacToeShouldContinue {
        //print gameboard
        let blankSpace = "___"
        let xChar = "_X_"
        let oChar = "_O_"
        var grid = Array(repeating: Array(repeating: blankSpace, count: 3), count: 3)
        var grid2 = [[blankSpace,blankSpace,blankSpace],
                     [blankSpace,blankSpace,blankSpace],
                     [blankSpace,blankSpace,blankSpace]]
        gameLoop: for turn in 0..<9 {
            for row in grid {
                for spaceIndex in 0..<row.count {
                    print("\(row[spaceIndex])",terminator: spaceIndex != 2 ? "|" : "\n")
                }
            }
            let isPlayerOneTurn = turn % 2 == 0
            print("Turn \(turn + 1).  \(isPlayerOneTurn ? "Player One Move (X)" : "Player Two Move (O)")")
            turnLoop: while true {
                print("Enter the row of your move")
                let rowInput = readLine()
                print("Enter the column of your move")
                let columnInput = readLine()
                if let rowStr = rowInput, let columnStr = columnInput, let row = Int(rowStr), let column = Int(columnStr) {
                    switch (row, column) {
                    case (0...2, 0...2):
                        if grid[row][column] == blankSpace {
                            let playerSymbol = isPlayerOneTurn ? xChar : oChar
                            grid[row][column] = playerSymbol
                            break turnLoop
                        }
                    default:
                        break
                    }
                }
                print("Please enter a valid move")
            }
            //Horizontal Victory check
            for row in grid {
                if row == [xChar,xChar,xChar] {
                    print("X wins!")
                    break gameLoop
                }
                if row == [oChar, oChar, oChar] {
                    print("O wins!")
                    break gameLoop
                }
            }
            //Vertical + Diagonal Checks here
        }
        ticTacToeShouldContinue = false
    }
}
