//
//  tableViewCell.swift
//  codeChallenge#2
//
//  Created by Katlynn Davis on 2/28/23.
//

import UIKit

class tableViewCell: UITableViewCell {
    
    @IBOutlet var genderLabel: UILabel!
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var locationLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!
    @IBOutlet var loginLabel: UILabel!
    @IBOutlet var dobLabel: UILabel!
    @IBOutlet var registeredLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var cellLabel: UILabel!
    @IBOutlet var idLabel: UILabel!
    @IBOutlet var picture: UIImageView!
    @IBOutlet var natLabel: UILabel!
   
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}
   
