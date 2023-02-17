//
//  GetUserPostController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/14/23.
//

import Foundation

class GetUserPostController {
    enum GetUserPostItemError: LocalizedError, Error {
        case badPost
    }
    
    func fetchItemsGetPost() async throws -> [GetUserPost] {
        let session = URLSession.shared
        var urlComponents = URLComponents(string: "\(API.url)/userPosts")!
        
        urlComponents.queryItems = [
            URLQueryItem(name: "userSecret", value: (User.current?.secret.uuidString)),
            URLQueryItem(name: "userUUID", value: (User.current?.userUUID.uuidString))
    
        ]
        
        var request = URLRequest(url: urlComponents.url!)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        // urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            
            // let response = response as? HTTPURLResponse
            // print(response)
            throw GetUserPostItemError.badPost
            
        }
        
        let decoder = JSONDecoder()
        // let getPostResponse = try decoder.decode([].self, from: data)
        
        let getUserPostResponse = try decoder.decode([GetUserPost].self, from: data)
        
        
        
        return getUserPostResponse
    }
    
}

//    // MARK: - Get
    

//        func fetchImage(from url: URL) async throws -> UIImage {
//            let (data, response) = try await URLSession.shared.data(from: url)
//            guard let httpResponse = response as? HTTPURLResponse,
//                  httpResponse.statusCode == 200 else {
//                throw GetPostItemError.imageDataMissing
//            }
//            guard let image = UIImage(data: data) else {
//                throw GetPostItemError.imageDataMissing
//            }
//            return image
//
//        }
