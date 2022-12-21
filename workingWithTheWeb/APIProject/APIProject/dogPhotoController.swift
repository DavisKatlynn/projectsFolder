//
//  dogPhotoController.swift
//  APIProject
//
//  Created by Katlynn Davis on 12/5/22.
//

import Foundation
class dogPhotoController {
    enum dogPhotoError: Error, LocalizedError {
        case itemNotFound
    }
    func fetchdogPhotoInfo() async throws -> dogPhoto {
        var urlComponents = URLComponents(string: "https://dog.ceo/api/breeds/image/random")!
        urlComponents.queryItems = [
            "api_key": "DEMO_KEY",
        ].map {URLQueryItem(name: $0.key, value: $0.key) }
        
        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
        
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            throw dogPhotoError.itemNotFound
        }
        
        let jsonDecoder = JSONDecoder()
        let dogPhoto = try jsonDecoder.decode(dogPhoto.self, from: data)
        return(dogPhoto)
    }
}
