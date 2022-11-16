//
//  playerCell.swift
//  scoreKeeperApp
//
//  Created by Katlynn Davis on 11/11/22.
//

import UIKit

class playerCell: UITableViewCell, UITableViewDelegate {

  
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var playerNameLabel: UILabel!
    
    @IBAction func stepperCounter(_ sender: UIStepper) {
        scoreLabel.text = String(sender.value)
    }
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        UITableViewCell.load()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    

}
