//
//  AnimationHelper.swift
//  BirdsClone
//
//  Created by Jefferey Rigler on 4/4/19.
//  Copyright © 2019 Rigler Digital. All rights reserved.
//

import SpriteKit

class AnimationHelper {
    
    static func loadTextures(from atlas: SKTextureAtlas, withName name: String) ->
        [SKTexture] {
        var textures = [SKTexture]()
        
            for index in 0..<atlas.textureNames.count {
                let textureName = name + String(index+1)
                textures.append(atlas.textureNamed(textureName))
            }
            
        return textures
    }
}
