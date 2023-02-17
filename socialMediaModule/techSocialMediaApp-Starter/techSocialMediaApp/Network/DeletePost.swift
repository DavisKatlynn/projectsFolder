//
//  DeletePost.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/17/23.
//

import Foundation
enum CannotDeletePostError: LocalizedError, Error {
    case cannotDeletePost
}
func deletePost(post: GetUserPost) async throws {
    let session = URLSession.shared
    var urlComponents = URLComponents(string: "\(API.url)/post")!
    
    urlComponents.queryItems = [
        URLQueryItem(name: "userSecret", value: (User.current?.secret.uuidString)),
        URLQueryItem(name: "postid", value: "\(post.postid)")

    ]
    
    var request = URLRequest(url: urlComponents.url!)
    request.httpMethod = "DELETE"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    // urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
    
    let (_, response) = try await session.data(for: request)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        
        // let response = response as? HTTPURLResponse
        // print(response)
        throw CannotDeletePostError.cannotDeletePost
        
    }
}
