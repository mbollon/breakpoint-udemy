//
//  ShadowViewVC.swift
//  breakpoint
//
//  Created by Marc Bollon on 8/14/17.
//  Copyright © 2017 Infocovery. All rights reserved.
//

import UIKit

class ShadowViewVC: UIView {

    override func awakeFromNib() {
        self.layer.shadowOpacity = 0.75
        self.layer.shadowRadius = 5
        self.layer.shadowColor = UIColor.black.cgColor
        super.awakeFromNib()
    }
    
}
