//
//  SKNode+Extensions.swift
//  BirdsClone
//
//  Created by Jefferey Rigler on 4/4/19.
//  Copyright © 2019 Rigler Digital. All rights reserved.
//

import SpriteKit

extension SKNode {
    
    func aspectScale(to size: CGSize, width: Bool, multiplier: CGFloat) {
        let scale = width ? (size.width * multiplier) / self.frame.size.width :
        (size.height * multiplier) / self.frame.size.height
    self.setScale(scale)
    }
    
}
