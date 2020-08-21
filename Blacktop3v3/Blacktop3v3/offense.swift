//
//  offense.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import Foundation

class PlayerOffense: Equatable {
    static func == (lhs: PlayerOffense, rhs: PlayerOffense) -> Bool {
        return lhs.stats == rhs.stats && lhs.assist == rhs.assist && lhs.dribble == rhs.dribble
    }
    
    var stats: ShootingStats
    var assist: Int
    var dribble: Int
    
    init(stats: ShootingStats, assist: Int, dribble: Int) {
        self.stats = stats
        self.assist = assist
        self.dribble = dribble
    }
}
