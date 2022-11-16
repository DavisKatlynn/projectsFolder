//
//  addNewPlayerViewController.swift
//  scoreKeeperApp
//
//  Created by Katlynn Davis on 11/11/22.
//

import UIKit

class addNewPlayerViewController: UIViewController, UITableViewDelegate {
    
    @IBOutlet weak var playerNameTextField: UITextField!
    
    @IBOutlet weak var currentScoreTextField: UITextField!
    
    @IBOutlet weak var savePlayerButton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    @IBAction func savePlayerButtonTapped(_ sender: Any) {
    }
    
    @IBAction func unwindToscoreboardTableViewController(_ unwindSegue: UIStoryboardSegue) {
        
        // Use data from the view controller which initiated the unwind segue
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
    }
}
    

