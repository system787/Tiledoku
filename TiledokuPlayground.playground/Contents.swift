import UIKit

let boardSize = 15

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
