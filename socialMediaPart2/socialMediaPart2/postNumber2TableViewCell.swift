//
//  postNumber2TableViewCell.swift
//  socialMediaPart2
//
//  Created by Katlynn Davis on 11/16/22.
//

import UIKit

class postNumber2TableViewCell: UITableViewCell {

    @IBOutlet weak var profilePicImage: UIImageView!
    
    @IBOutlet weak var usernameLabel: UILabel!
    
    @IBOutlet weak var captionLabel: UILabel!
    
    @IBOutlet weak var imagePost: UIImageView!
    
    @IBOutlet weak var view: UIView!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
