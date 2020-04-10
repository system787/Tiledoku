//
//  TileState.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/9/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation

enum TileState: Int {
    case EMPTY = 0
    case TRAP = 1
    case CLEARED = 2
    case FLAGGED = 3
}
