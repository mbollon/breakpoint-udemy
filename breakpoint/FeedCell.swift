//
//  FeedCell.swift
//  breakpoint
//
//  Created by Marc Bollon on 9/16/17.
//  Copyright © 2017 Infocovery. All rights reserved.
//

import UIKit

class FeedCell: UITableViewCell {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var contentLbl: UILabel!
    
    func configureCell(profileImage: UIImage, email: String, content: String) {
        
        self.profileImage.image = profileImage
        self.emailLbl.text = email
        self.contentLbl.text = content
        
    }
    
}
