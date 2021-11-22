//
//  ProfileCell.swift
//  Setting_Clone_App
//
//  Created by 성기훈 on 2021/11/22.
//

import UIKit

class ProfileCell: UITableViewCell {

    @IBOutlet var profileImageView: UIImageView!
    
    @IBOutlet var topTitle: UILabel!
    @IBOutlet var bottomDescription: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let profileHeight: CGFloat = 60
        profileImageView.layer.cornerRadius = profileHeight / 2
        
        topTitle.textColor = .blue
        topTitle.font = UIFont.systemFont(ofSize: 20)
        
        bottomDescription.textColor = .darkGray
        bottomDescription.font = UIFont.systemFont(ofSize: 16)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
