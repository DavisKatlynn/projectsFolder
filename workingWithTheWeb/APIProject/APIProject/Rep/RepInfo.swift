//
//  RepInfo.swift
//  APIProject
//
//  Created by Katlynn Davis on 12/20/22.
//

import Foundation

struct Results: Codable {
    var results: [Rep]
}

struct Rep: Codable {
    
    let name: String
    var party: String
    var state: String
    var link: String
    
}
