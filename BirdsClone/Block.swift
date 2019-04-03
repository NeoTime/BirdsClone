//
//  Block.swift
//  BirdsClone
//
//  Created by Jefferey Rigler on 4/3/19.
//  Copyright © 2019 Rigler Digital. All rights reserved.
//

import SpriteKit

enum BlockType: String {
    case wood, stone, glass
}

class Block: SKSpriteNode {
    
    let type: BlockType
    var health: Int
    let damageThreshold: Int
    
    init(type: BlockType) {
        self.type = type
        switch type {
        case .wood:
            health = 200
        case .stone:
            health = 500
        case .glass:
            health = 50
            
        }
        damageThreshold = health/2
        super.init(texture: nil, color: UIColor.clear, size: CGSize.zero)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func createPhysicsBody() {
        physicsBody = SKPhysicsBody(rectangleOf: size)
        physicsBody?.isDynamic = true
        physicsBody?.categoryBitMask = PhysicsCategory.block
        physicsBody?.contactTestBitMask = PhysicsCategory.all
        physicsBody?.collisionBitMask = PhysicsCategory.all
        }
    
    func impact(with force: Int) {
        health -= force
        print(health)
        if health < 1 {
            removeFromParent()
        } else if health < damageThreshold {
            color = UIColor.red
        }
    }
    
}
