//
//  MyPostsTableViewCell.swift
//  techSocialMediaApp
//
//  Created by Katlynn Davis on 2/12/23.
//

import UIKit

protocol MyPostTableViewCellDelegate {
    func performEditPostSegue(cell: UITableViewCell)
    func deletePost(cell: UITableViewCell)
}

class MyPostsTableViewCell: UITableViewCell {
    
    var delegate: MyPostTableViewCellDelegate?
    
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var bodyLabel: UILabel!
    
    @IBOutlet weak var CreateDateLabel: UILabel!
    
    @IBOutlet weak var likesCountLabel: UILabel!
    
    
    @IBOutlet weak var commentsCountLabel: UILabel!
    
    

    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
        
    }
    @IBAction func editButtonTapped(_ sender: Any) {
        delegate?.performEditPostSegue(cell: self)
    }
    @IBAction func deleteButtonTapped(_ sender: Any) {
        delegate?.deletePost(cell: self)
    }
}
