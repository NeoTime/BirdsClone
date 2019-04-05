//
//  LevelData.swift
//  BirdsClone
//
//  Created by Jefferey Rigler on 4/5/19.
//  Copyright © 2019 Rigler Digital. All rights reserved.
//

import Foundation

struct LevelData {
    let birds: [String]
    
    init?(level: Int) {
        guard let levelDictionary = Levels.levelsDictionary["Level_\(level)"] as?
            [String:Any] else {
                return nil
        }
        guard let birds = levelDictionary["Birds"] as? [String] else {
            return nil
        }
        self.birds = birds
    }
}

