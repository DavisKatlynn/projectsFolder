//
//  GetPostController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import Foundation

enum GetPostItemError: LocalizedError, Error {
    case badPost
}

class GetPostController {
    
    func fetchItemsGetPost(userSecret: UUID, pageNumber: Int) async throws -> [GetPostUser] {
        let session = URLSession.shared
        var urlComponents = URLComponents(string: "\(API.url)/posts")!
        
        urlComponents.queryItems = [
            URLQueryItem(name: "userSecret", value: "\(userSecret)"),
            URLQueryItem(name: "pageNumber", value: "\(pageNumber)")
        ]
        
        var request = URLRequest(url: urlComponents.url!)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            
            // let response = response as? HTTPURLResponse
            // print(response)
            throw GetPostItemError.badPost
            
        }
        
        let decoder = JSONDecoder()
        // let getPostResponse = try decoder.decode([].self, from: data)
        
        let getPostResponse = try decoder.decode([GetPostUser].self, from: data)
        
        
        
        return getPostResponse
    }
    
}

