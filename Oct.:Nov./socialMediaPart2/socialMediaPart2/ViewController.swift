//
//  ViewController.swift
//  socialMediaPart2
//
//  Created by Katlynn Davis on 11/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var posts: [Post] = [
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "@KatlynnDavis", postImage: UIImage(named: "Image1")!, caption: "Funny"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image2")!, caption: "change 1 thing and its messed up"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image3")!, caption: "Extremley Happy!"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image4")!, caption: "Always need your mac!"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image5")!, caption: "Someone elses problem"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image6")!, caption: "I have no idea"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image7")!, caption: "its magic!"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image8")!, caption: "Stack Overflow for the win!"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image9")!, caption: "swifty"),
        Post(profileImage: UIImage(named: "myprofilepic")!, username: "KatlynnDavis", postImage: UIImage(named: "Image10")!, caption: "hahah")
        
    ]
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
        
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        
            let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! postsTableViewCell
        
        let post = posts[indexPath.row]
        cell.update(with: post)
            
        cell.layer.cornerRadius = 10
        cell.clipsToBounds = true
        
        cell.profilePicImage.layer.cornerRadius = 20
        cell.profilePicImage.clipsToBounds = true
        
            
            cell.selectionStyle = .none
            
            return cell
        
        }
    }

      
