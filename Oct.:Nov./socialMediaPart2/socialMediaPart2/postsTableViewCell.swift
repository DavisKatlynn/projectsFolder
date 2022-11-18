//
//  postsTableViewCell.swift
//  socialMediaPart2
//
//  Created by Katlynn Davis on 11/18/22.
//

import UIKit

class postsTableViewCell: UITableViewCell {
    
    @IBOutlet weak var profilePicImage: UIImageView!
    @IBOutlet weak var usernameLabel: UILabel!
    @IBOutlet weak var postImage: UIImageView!
    @IBOutlet weak var captionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
//    init(usernameLabel: String, postImage: String, captionLabel: String, post: Post?) {
//        let profileImage = UIImage(named: "my profile pic")
//        self.profilePicImage = UIImageView(image: profileImage)
//        self.usernameLabel.text = usernameLabel
//        let postUIImage = UIImage(named: postImage)
//        self.postImage = UIImageView(image: postUIImage)
//        self.captionLabel.text = captionLabel
//        self.post = post
//
//        func setSelected(_ selected: Bool, animated: Bool) {
//        super.setSelected(selected, animated: animated)
//
//    }
    
    func update(with post: Post) {
        profilePicImage.image = post.profileImage
        usernameLabel.text = post.username
        postImage.image = post.postImage
        captionLabel.text = post.caption
    }
}
    
   
