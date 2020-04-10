//
//  Board.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/9/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation

enum BoardSize: Int {
    case SMALL = 5
    case MEDIUM = 10
    case LARGE = 15
}

class Board {
    private var mBoardSize: BoardSize
    
    init(_ boardSize: BoardSize) {
        self.mBoardSize = boardSize
    }
    
    
    func generateBoard() {
        
    }
}
