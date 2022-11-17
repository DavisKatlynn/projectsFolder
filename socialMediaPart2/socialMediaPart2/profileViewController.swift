//
//  profileViewController.swift
//  socialMediaPart2
//
//  Created by Katlynn Davis on 11/16/22.
//

import UIKit

class profileViewController: UIViewController {
    
    @IBOutlet weak var profileBackgroundImage: UIImageView!
    @IBOutlet weak var profilePicImage: UIImageView!
    
    @IBOutlet weak var profileNameLabel: UILabel!
    
    @IBOutlet weak var descriptionLabel: UILabel!
    
    
    @IBOutlet weak var addFriendButton: UIButton!
    
    @IBOutlet weak var infoButton: UIButton!
    
    @IBOutlet weak var jobImage: UIImageView!
    @IBOutlet weak var jobLabel: UILabel!
    
    @IBOutlet weak var schoolImage: UIImageView!
    @IBOutlet weak var schoolLabel: UILabel!
    
    @IBOutlet weak var livesImage: UIImageView!
    @IBOutlet weak var livesLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func infoButtonPressed(_ sender: Any) {
    }
    @IBAction func addFriendButtonPressed(_ sender: Any) {
    }
}
