//
//  ViewController.swift
//  socialMediaPart2
//
//  Created by Katlynn Davis on 11/16/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var table: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = .lightGray
        
        self.table.register(UINib.init(nibName: "imageTableViewCell", bundle: .main), forCellReuseIdentifier: "imageTableViewCell")
        
        self.table.register(UINib.init(nibName: "postNumber2TableViewCell", bundle: .main), forCellReuseIdentifier: "postNumber2TableViewCell")
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if (indexPath.row == 0 || indexPath.row == 1 || indexPath.row == 5 || indexPath.row == 7 || indexPath.row == 9)
        {
            let cell:imageTableViewCell = tableView.dequeueReusableCell(withIdentifier: "imageTableViewCell", for: indexPath) as! imageTableViewCell
            
            cell.view.layer.cornerRadius = 20
            cell.view.clipsToBounds = true
            
            cell.profilePicImage.layer.cornerRadius = 45
            cell.profilePicImage.clipsToBounds = true
            
            cell.selectionStyle = .none
            
            return cell
        }
        else {
            let cell:postNumber2TableViewCell = tableView.dequeueReusableCell(withIdentifier: "postNumber2TableViewCell", for: indexPath) as! postNumber2TableViewCell
            
            cell.view.layer.cornerRadius = 10
            cell.view.clipsToBounds = true
            
            
            cell.profilePicImage.clipsToBounds = true
            
            cell.selectionStyle = .none
            
            return cell
        }
    }
}
      
