//
//  GetUserPost.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/14/23.
//

import Foundation
//GET USER Post

struct GetUserPost: Decodable, Encodable { //REsponces
    var postid: Int
    var title: String
    var body: String
    var authorUserName: String
    var authorUserId: String
    var likes: Int
    var userLiked: Bool
    var numComments: Int
    var createdDate: String
}
