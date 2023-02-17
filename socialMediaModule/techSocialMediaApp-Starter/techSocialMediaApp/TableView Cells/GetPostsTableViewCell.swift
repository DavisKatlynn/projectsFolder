//
//  GetPostsTableViewCell.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import UIKit

class GetPostsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var CreateDateLabel: UILabel!

    @IBOutlet weak var likesCountLabel: UILabel!
    var likesCount = 0
       
    @IBOutlet weak var commentsCountLabel: UILabel!
    var commentCount = 0
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    @IBAction func likesButtonTapped(_ sender: UIButton) {
        likesCount += 1
        likesCountLabel.text = "\(likesCount)"

    }
    @IBAction func commentsButtonTapped(_ sender: Any) {
        commentCount += 1
        commentsCountLabel.text = "\(commentCount)"
    }
    @IBAction func editButtonTapped(_ sender: Any) {
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
    }
}
