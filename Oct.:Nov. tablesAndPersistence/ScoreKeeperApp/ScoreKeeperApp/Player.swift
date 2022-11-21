//
//  Players.swift
//  ScoreKeeperApp
//
//  Created by Katlynn Davis on 11/10/22.
//

import Foundation

struct Player: Codable, Comparable {
    static func < (lhs: Player, rhs: Player) -> Bool {
        return lhs.currentScore > rhs.currentScore
    }
    
    var name: String
    var currentScore: Int
}
