//
//  ProfileViewController.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    var updateData: Any? {
        didSet {
            // Update the view controller with the new data and save the changes to the app
        }
    }

    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var firstNameLabel: UILabel!
    
    @IBOutlet weak var lastNameLabel: UILabel!
    
    @IBOutlet weak var techInterestLabel: UILabel!
    
    @IBOutlet weak var bioTextView: UILabel!
   
    

    var profileUser = [ProfileUser]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        profileInfo()
        
        
        

        // Do any additional setup after loading the view.
    }
    
    //This FUNC CALLS THE DATA FOR THE PROFILE
    
    func profileInfo() {
        Task {
            do {
                
                let profileResponse = try await ProfileController().profileData(userUUID: User.current!.userUUID, userSecret: User.current!.secret)
                
                profileUser.append(profileResponse)
                userNameLabel.text = profileUser[0].userName
                firstNameLabel.text = profileUser[0].firstName
                lastNameLabel.text = profileUser[0].lastName
                techInterestLabel.text = profileUser[0].techInterests
                bioTextView.text = profileUser[0].bio
                
            } catch {
                print("error")
            }
        }
    }
    
    @IBAction func unwindToProfile(segue: UIStoryboardSegue) {
        
        // Your code here to handle the unwind
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "backToProfileSegue" {
            // Your code here to pass data back to the original view controller
        }
    }
   
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
