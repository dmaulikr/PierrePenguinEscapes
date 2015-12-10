//
//  Coin.swift
//  Pierre Penguin Escapes
//
//  Created by Saurabh Sikka on 10/12/15.
//  Copyright © 2015 Saurabh Sikka. All rights reserved.
//

import Foundation
import SpriteKit

class Coin: SKSpriteNode, GameSprite {
    var textureAtlas:SKTextureAtlas = SKTextureAtlas(named: "goods.atlas")
    var value = 1 // default for the bronze coin
    
    func spawn(parentNode: SKNode, position: CGPoint, size: CGSize=CGSize(width: 26, height: 26)) {
        parentNode.addChild(self)
        self.size = size
        self.position = position
        self.physicsBody = SKPhysicsBody(circleOfRadius: size.width / 2)
        self.physicsBody?.affectedByGravity = false
        self.texture = textureAtlas.textureNamed("coin-bronze.png")
    }
    
    func turnToGold() {
        self.texture = textureAtlas.textureNamed("coin-gold.png")
        self.value = 5
    }
    
    func onTap() {
        //
    }
}