//
//  ViewController.swift
//  yearLongProject
//
//  Created by Katlynn Davis on 10/6/22.
//

import UIKit

/*You have joined a tech startup that needs you to start putting together a "Tech Social Media App." You need to create the user profile screen.
This screen should show you as a user.
Should show a profile photo and a background photo at the top of the screen.
Should show the users name and some interesting tech facts about the user(including tech interests, tech companies and tech they don't like)
Should have one post under the user details
Create a second tab where posts are displayed.
Show at least one post from your user
You are to design and create the screens yourself.
You are also to come up with a company name.*/

class ViewController: UIViewController {
    
    @IBOutlet weak var followButton: UIButton!
    @IBOutlet weak var infoButton: UIButton!
    @IBOutlet weak var postsView1: UIView!
    @IBOutlet weak var postsView2: UIView!
    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var myPortfolioButton: UIButton!
    @IBOutlet weak var questionForumButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        followButton.layer.cornerRadius = 5
        infoButton.layer.cornerRadius = 5
        
        postsView1.layer.shadowColor = UIColor.black.cgColor
        postsView1.layer.shadowOpacity = 1
        postsView1.layer.shadowOffset = .zero
        postsView1.layer.shadowRadius = 1
        postsView1.layer.cornerRadius = 8
        
        
        
    }

    @IBAction func followButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func infoButtonPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton) {
    }

    @IBAction func questionForumButtonPressed(_ sender: UIButton) {
    }
    
    
}




