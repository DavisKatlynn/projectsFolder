//
//  ProfileController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import Foundation

class ProfileController {
    enum ProfileError: LocalizedError, Error {
        case badPost
    }
    
    func profileData(userUUID: UUID, userSecret: UUID) async throws -> ProfileUser {
        let session = URLSession.shared
        var urlComponents = URLComponents(string: "\(API.url)/posts")!
        
        urlComponents.queryItems = [
            URLQueryItem(name: "userUUID", value: "\(userUUID)"),
            URLQueryItem(name: "userSecret", value: "\(userSecret)")
        ]
        
        var request = URLRequest(url: urlComponents.url!)
        
        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
        //urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
        let (data, response) = try await session.data(for: request)
        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
            
            //let response = response as? HTTPURLResponse
            //print(response)
            throw ProfileError.badPost
//            let response = response as? HTTPURLResponse
//            print(response?.statusCode)
        }
        
        let decoder = JSONDecoder()
        // let getPostResponse = try decoder.decode([].self, from: data)
        let profileResponse = try decoder.decode(ProfileUser.self, from: data)
        
        
        await GetPostTableViewController().tableView.reloadData()
        return profileResponse
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
    


//class ProfileController {
//
//    //MARK: get user Profile
//
//    enum GetProfileError: Error, LocalizedError {
//        case itemsNotFound
//    }
//
//    static func getProfile(matching query: [String: String]) async throws -> [User] {
//        var urlComponents = URLComponents(string:
//                                            "https://tech-social-media-app.fly.dev/userProfile")!
//
//        urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
//        let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
//        guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//            throw GetProfileError.itemsNotFound
//        }
//
//        let decoder = JSONDecoder()
//        let getUserProfileResponse = try decoder.decode(GetUserProfileResponse.self, from: data)
//        return getUserProfileResponse.results
//    }
//
//    // MARK: post update Profile
//
//    enum UpdateProfileError: Error, LocalizedError {
//        case itemsNotFound
//
//    }
//    static func updateProfile(userName: String, bio: String, techInterests: String) async throws -> [User] {
//        // Initialize our session and request
//        let session = URLSession.shared
//        var request = URLRequest(url: URL(string: "\(API.url)/updateProfile")!)
//
//        // Put the credentials in JSON format
//        let postDictionary: [String: Any] = ["userName": userName, "bio": bio, "techInterests": techInterests]
//
//        // Add json data to the body of the request. Also clarify that this is a POST request
//        request.httpBody = try JSONSerialization.data(withJSONObject: postDictionary, options: .prettyPrinted)
//        request.httpMethod = "POST"
//        request.setValue("application/json", forHTTPHeaderField: "Content-Type")
//
//
//        let (data, response) = try await session.data(for: request)
//        guard let httpResponse = response as? HTTPURLResponse,
//              httpResponse.statusCode == 200 else {
//            throw UpdateProfileError.itemsNotFound
//        }
//
//        let decoder = JSONDecoder()
//        let updateProfileResponse = try decoder.decode(UpdateProfileResponse.self, from: data)
//        return updateProfileResponse.results
//    }
//
//    // MARK: User Posts
//    enum GetUserPostError: Error, LocalizedError {
//        case itemsNotFound
//        static func getUserPost(matching query: [String: String]) async throws -> [User] {
//            var urlComponents = URLComponents(string:
//                                                "https://tech-social-media-app.fly.dev/userPosts")!
//
//            urlComponents.queryItems = query.map { URLQueryItem(name: $0.key, value: $0.value) }
//            let (data, response) = try await URLSession.shared.data(from: urlComponents.url!)
//            guard let httpResponse = response as? HTTPURLResponse, httpResponse.statusCode == 200 else {
//                throw GetUserPostError.itemsNotFound
//            }
//
//            let decoder = JSONDecoder()
//            let getUserPostResponse = try decoder.decode(GetUserPostResponse.self, from: data)
//            return getUserPostResponse.results
//        }
//    }
//}
