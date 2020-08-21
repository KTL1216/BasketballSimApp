//
//  player.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import Foundation

class Player: Equatable {
    static func == (lhs: Player, rhs: Player) -> Bool {
        return lhs.name == rhs.name && lhs.offense == rhs.offense && lhs.defense == rhs.defense
    }
    
    var name: String
    var offense: PlayerOffense
    var defense: PlayerDefense
    
    init(name: String, offense: PlayerOffense, defense: PlayerDefense) {
    self.name = name
    self.offense = offense
    self.defense = defense
    }
    
    func getScored() -> Int {
        var points = 0
        
        for _ in 1...self.offense.stats.fgAttempts {
            if(Double.random(in: 0 ..< 1) < self.offense.stats.fgPercent) {
                points += 2
            }
        }
        for _ in 1...self.offense.stats.tpAttempts {
            if(Double.random(in: 0 ..< 1) < self.offense.stats.tpPercent) {
                points += 3
            }
        }
        return points
    }
    
    func getAssists() -> Int {
        let x = (1.0 / (Double.random(in: 0 ..< 1) * 10.0 + 6.0)) * Double(self.offense.assist)
        
        return Int(x)
    }
    
    func getRebounds() -> Int {
        let x = (1.0 / (Double.random(in: 0 ..< 1) * 10.0 + 6.0)) * Double(self.defense.rebounds)
        
        return Int(x)
    }
    
    func getSteals() -> Int {
        let x = (1.0 / (Double.random(in: 0 ..< 1) * 10.0 + 10.0)) * Double(self.defense.steals)
        
        return Int(x)
    }
    
    func getBlocks() -> Int {
        let x = (1.0 / (Double.random(in: 0 ..< 1) * 10.0 + 10.0)) * Double(self.defense.block)
        
        return Int(x)
    }
}
