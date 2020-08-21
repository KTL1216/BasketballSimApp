//
//  defense.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import Foundation

class PlayerDefense: Equatable {
    static func == (lhs: PlayerDefense, rhs: PlayerDefense) -> Bool {
        return lhs.block == rhs.block && lhs.steals == rhs.steals && lhs.rebounds == rhs.rebounds
    }
    
    var block: Int
    var steals: Int
    var rebounds: Int
    
    init(block: Int, steals: Int, rebounds: Int) {
    self.block = block
    self.steals = steals
    self.rebounds = rebounds
    }
}
