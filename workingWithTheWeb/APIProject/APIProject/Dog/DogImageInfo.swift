//
//  DogImageInfo.swift
//  APIProject
//
//  Created by Katlynn Davis on 12/16/22.
//

import Foundation
import UIKit

struct DogImageInfo: Codable {
    var url: URL
    var status: String
    
    enum CodingKeys: String, CodingKey {
        case url = "message"
        case status
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.url = try container.decode(URL.self, forKey: .url)
        self.status = try container.decode(String.self, forKey: .status)
    }

    }


