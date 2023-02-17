//
//  EditUserPost.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/17/23.
//

import Foundation

func editPost(title: String, body: String, postid: Int) async throws {
    // Initialize our session and request
    let session = URLSession.shared
    var request = URLRequest(url: URL(string: "\(API.url)/editPost")!)
    
    // Put the credentials in JSON format
    let credentials: [String: Any] = ["userSecret": User.current!.secret.uuidString, "post": [
        "postid": postid,
        "title": title,
        "body": body
            
        ]
    ]
    
    // Add json data to the body of the request. Also clarify that this is a POST request
    request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
    request.httpMethod = "POST"
    request.setValue("application/json", forHTTPHeaderField: "Content-Type")
    
    // Make the request
    let (_, response) = try await session.data(for: request)
    
    // Ensure we had a good response (status 200)
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw GetPostItemError.badPost
    }
}

