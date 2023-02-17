//
//  MakePostController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/14/23.
//

import Foundation

class MakePostController {
    
    enum AuthError: Error, LocalizedError {
        case itemsNotFound
    }

    /**
     Will make a request to authenticate the users credentials. If successful the User.current object will hold the signed in user.
     
     - Throws: If the user does not exist or if the API.url is invalid
     - Returns: A boolean depending on whether or not the operation was successful
     */
    func makePost(userSecret: UUID, title: String, body: String) async throws {
        // Initialize our session and request
        let session = URLSession.shared
        var request = URLRequest(url: URL(string: "\(API.url)/createPost")!)
        
        // Put the credentials in JSON format
        let credentials: [String: Any] = ["userSecret": userSecret.uuidString, "post": [
                "title": title,
                "body": body
            ]
        ]
        
        // Add json data to the body of the request. Also clarify that this is a POST request
        request.httpBody = try JSONSerialization.data(withJSONObject: credentials, options: .prettyPrinted)
        request.httpMethod = "POST"
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        // Make the request
        let (data, response) = try await session.data(for: request)
        
        // Ensure we had a good response (status 200)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw AuthError.itemsNotFound
        }
    }
}
