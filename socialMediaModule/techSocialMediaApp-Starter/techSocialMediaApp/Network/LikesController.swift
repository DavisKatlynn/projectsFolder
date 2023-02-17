//
//  LikesController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

//import Foundation
//
//class LikesController {
//
//    enum LikesItemError: Error, LocalizedError {
//        case itemsNotFound
//
//    }
//    static func likePost(userSecret: UUID, postid: Int) async throws -> Bool {
//        // Initialize our session and request
//        let session = URLSession.shared
//        var request = URLRequest(url: URL(string: "\(API.url)/updateLikes")!)
//
//        // Put the credentials in JSON format
//        let postDictionary: [String: Any] = ["userSecret": userSecret, "postid": postid]
//
//        // Add json data to the body of the request. Also clarify that this is a POST request
//        request.httpBody = try JSONSerialization.data(withJSONObject: postDictionary, options: .prettyPrinted)
//        request.httpMethod = "POST"//???????????????/
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//
//        let (data, response) = try await session.data(for: request)
//        guard let httpResponse = response as? HTTPURLResponse,
//              httpResponse.statusCode == 200 else {
//            throw LikesItemError.itemsNotFound
//        }
//
//        let decoder = JSONDecoder()
//        let likesPostResponse = try decoder.decode(LikesUser.self, from: data)
//
//        return true
//    }
//}
