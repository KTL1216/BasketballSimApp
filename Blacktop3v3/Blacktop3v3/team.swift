//
//  team.swift
//  Blacktop3v3
//
//  Created by Kenton  Lee on 5/1/20.
//  Copyright © 2020 KTL28. All rights reserved.
//

import Foundation

class Team {
    var name: String
    var lineUp: Array<Player>
    
    init(name: String, lineUp: Array<Player>) {
        self.name = name
        self.lineUp = lineUp
    }
    
}
