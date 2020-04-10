//
//  GameController.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/9/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation

class GameController {
    private var mGameBoard: [[Int]]
    
    init(gameBoardSize: BoardSize) {
        let board = Board(gameBoardSize)
        self.mGameBoard = board.getBoard()
    }
    
    // MARK: returns an array representing clusters of contiguous tiles in a row
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
    
}
