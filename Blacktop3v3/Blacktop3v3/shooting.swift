//
//  shooting.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import Foundation

class ShootingStats: Equatable {
    static func == (lhs: ShootingStats, rhs: ShootingStats) -> Bool {
        return lhs.fgPercent == rhs.fgPercent && lhs.tpPercent == rhs.tpPercent && lhs.fgAttempts == rhs.fgAttempts && lhs.tpAttempts == rhs.tpAttempts && lhs.ftPercent == rhs.ftPercent
    }
    
    
    var fgPercent: Double
    var tpPercent: Double
    var fgAttempts: Int
    var tpAttempts: Int
    var ftPercent: Double
    
    init(fgPercent: Double, tpPercent: Double, fgAttempts: Int, tpAttempts: Int, ftPercent: Double) {
        self.fgPercent = fgPercent
        self.tpPercent = tpPercent
        self.fgAttempts = fgAttempts
        self.tpAttempts = tpAttempts
        self.ftPercent = ftPercent
    }
}
