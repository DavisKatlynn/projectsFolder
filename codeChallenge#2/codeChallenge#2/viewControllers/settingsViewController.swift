//
//  settingsViewController.swift
//  codeChallenge#2
//
//  Created by Katlynn Davis on 2/28/23.
//

import UIKit

class settingsViewController: UIViewController {
    
    @IBOutlet var howManyUsersLabel: UILabel!
    @IBOutlet var stepper: UIStepper!
    
    @IBOutlet var userCountLabel: UILabel!
    var userCount: Int = 1 {
        didSet {
            userCountLabel.text = "\(userCount)"
        }
    }
    @IBAction func stepperValueChanged(_ sender: UIStepper) {
            userCount = Int(sender.value)
        }
    
    @IBOutlet var displayInfoLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var dobLabel: UILabel!
    @IBOutlet var dobSwitch: UISwitch!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var emailSwitch: UISwitch!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var locationSwitch: UISwitch!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var loginSwitch: UISwitch!
    @IBOutlet var registeredLabel: UILabel!
    @IBOutlet var registeredSwitch: UISwitch!
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var genderSwitch: UISwitch!
    @IBOutlet var cellLabel: UILabel!
    @IBOutlet var cellSwitch: UISwitch!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var phoneSwitch: UISwitch!
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var idSwitch: UISwitch!
    @IBOutlet var natLabel: UILabel!
    @IBOutlet var natSwitch: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dobSwitch.isOn = false
        emailSwitch.isOn = false
        locationSwitch.isOn = false
        loginSwitch.isOn = false
        registeredSwitch.isOn = false
        genderSwitch.isOn = false
        cellSwitch.isOn = false
        phoneSwitch.isOn = false
        idSwitch.isOn = false
        natSwitch.isOn = false
        userCountLabel.text = "\(Int(stepper.value))"
    }
    
    var allLabels = ["nameLabel", "dobLabel", "emailLabel", "locationLabel", "loginLabel", "registeredLabel", "genderLabel", "cellLabel", "phoneLabel", "natLabel" ]
    var displayedLabels: [String] {
        var labelsToDisplay = [String]()
        
        if dobSwitch.isOn {
            labelsToDisplay.append("dobLabel")
        }
        if emailSwitch.isOn {
            labelsToDisplay.append("emailLabel")
        }
        if locationSwitch.isOn {
            labelsToDisplay.append("locationLabel")
        }
        if loginSwitch.isOn {
            labelsToDisplay.append("loginLabel")
        }
        if registeredSwitch.isOn {
            labelsToDisplay.append("registeredLabel")
        }
        if genderSwitch.isOn {
            labelsToDisplay.append("genderLabel")
        }
        if cellSwitch.isOn {
            labelsToDisplay.append("cellLabel")
        }
        if phoneSwitch.isOn {
            labelsToDisplay.append("phoneLabel")
        }
        if natSwitch.isOn {
            labelsToDisplay.append("natLabel")
            
        }
        return labelsToDisplay
    }
}

 
        // Do any additional setup after loading the view.
        
        
        
        /*
         // MARK: - Navigation
         
         // In a storyboard-based application, you will often want to do a little preparation before navigation
         override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
         }
         */
