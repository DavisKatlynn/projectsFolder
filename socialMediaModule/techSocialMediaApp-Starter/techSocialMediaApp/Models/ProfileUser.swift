//
//  ProfileUser.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import Foundation

//my own profile

struct ProfileUser: Decodable, Encodable {
    var firstName: String
    var lastName: String
    var userName: String
    var userUUID: String
    var bio: String
    var techInterests: String

}
