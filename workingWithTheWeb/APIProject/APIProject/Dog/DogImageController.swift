//
//  DogImageController.swift
//  APIProject
//
//  Created by Katlynn Davis on 12/16/22.
//

import Foundation
import UIKit


enum DogImageInfoError: Error, LocalizedError {
    case infoNotFound
    case photoNotFound
}

func fetchDogImageInfo() async throws -> DogImageInfo {
    let urlComponents = URLComponents(string: "https://dog.ceo/api/breeds/image/random")!
    
    let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
    
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw DogImageInfoError.infoNotFound
    }
    
    let jsonDecoder = JSONDecoder()
    let dogImageInfo = try jsonDecoder.decode(DogImageInfo.self, from: data)
    return(dogImageInfo)
}

func dogImage(dogImageurl: URL) async throws -> UIImage {
    let (data, response) = try await URLSession.shared.data(from: dogImageurl)
    
    guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
        throw DogImageInfoError.photoNotFound
    }
    
    guard let dogPhoto = UIImage(data: data) else {
        throw DogImageInfoError.photoNotFound
    }
    
    return dogPhoto

}

