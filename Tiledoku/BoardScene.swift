//
//  BoardScene.swift
//  Tiledoku
//
//  Created by Vincent Hoang on 4/10/20.
//  Copyright © 2020 Vincent Hoang. All rights reserved.
//

import Foundation
import SpriteKit
import GameplayKit

class BoardScene: SKScene {
    var mEntities = [GKEntity]()
    var mGraphs = [String : GKGraph]()
    
    private var mLastUpdateTime: TimeInterval = 0
    private var mLabel: SKLabelNode?
    
    override func sceneDidLoad() {
        
    }
    
    func drawBoard() {
        
    }
}
