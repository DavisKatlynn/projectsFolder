//
//  Athlete.swift
//  FavoriteAthlete
//
//  Created by Katlynn Davis on 10/26/22.
//

import Foundation

struct Athlete {
    var name: String
    var age: String
    var league: String
    var team: String
    
    var description: String {
        return "\(name) is \(age) years old and plays for the \(team) in the \(league)."
    }
}
