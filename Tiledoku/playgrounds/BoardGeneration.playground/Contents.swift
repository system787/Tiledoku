import UIKit

/*
 Board generation
 */
let boardSize = 5

func generateRow() -> [Int] {
    var row = [Int]()
    
    while row.count < boardSize {
        let randomLength = Int.random(in:0...boardSize-row.count)
        
        if randomLength > 0 {
            for _ in 1...randomLength {
                row.append(1)
            }
        }
        
        if row.count < boardSize {
            row.append(0)
        }
    }
    
    return row
}

func generateBoard() -> [[Int]] {
    var board = [[Int]]()
    for _ in 0..<boardSize {
        board.append(generateRow())
    }
    
    return board
}

print(generateBoard())

/*
 GameController functions
 */
func getRowCounts(inputArray: [Int]) -> [Int] {
    var rowCounts = [Int]()
    var count = 0
    
    for i in inputArray {
        if i == 1 {
            count += 1
        } else if i == 0 && count > 0 {
            rowCounts.append(count)
            count = 0
        }
    }
    
    if count > 0 {
        rowCounts.append(count)
    }
    
    return rowCounts
}

print(getRowCounts(inputArray: [1,1,1,0,1,0,0,1,1,0]))
