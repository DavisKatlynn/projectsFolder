//
//  NetworkingManager.swift
//  codeChallenge#2
//
//  Created by Katlynn Davis on 2/28/23.
//

import Foundation


class NetworkingManager {
    
    var userCount = 10 // define userCount as a property

     var users: [Results] = [] // define users as a property

     func fetchUsers(completion: @escaping (Result<[User], Error>) -> Void)  {
         let urlString = "https://randomuser.me/api/?results=\(userCount)"
         
         guard let url = URL(string: urlString) else { return }
         URLSession.shared.dataTask(with: url) { [weak self] (data, response, error) in
             guard let self = self, let data = data else { return }
             do {
                 let decoder = JSONDecoder()
                 let result = try decoder.decode(RandomUserResponse.self, from: data)
                 completion([result])
                 self.users = result.results
                 DispatchQueue.main.async {

                     self.tableView.reloadData()
                 }
             } catch {
                 print("Error parsing users:", error.localizedDescription)
             }
         }.resume()
     }
 }
    

struct Results: Decodable {
    let gender: String
    let name: Name
    let location: Location
    let email: String
    let login: Login
    let dob: Dob
    let registered: Registered
    let phone: String
    let cell: String
    let id: Id
    let picture: Picture
    let nat: String
}

struct Name: Decodable {
    let title: String
    let first: String
    let last: String
}

struct Location: Decodable {
    let street: Street
    let city: String
    let state: String
    let country: String
    let postcode: Int
    
}

struct Street: Decodable {
    let number: Int
    let name: String
}

struct Login: Decodable {
    let uuid: String
    let username: String
   
}

struct Dob: Decodable {
    let date: String
    let age: Int
}

struct Registered: Decodable {
    let date: String
    let age: Int
}

struct Id: Decodable {
    let name: String?
    let value: String?
}

struct Picture: Decodable {
    let large: String
    let medium: String
    let thumbnail: String
}

struct RandomUserResponse: Decodable {
    let results: [Results]
    let info: Info
}

struct Info: Decodable {
    let seed: String
    let results: Int
    let page: Int
    let version: String
}
