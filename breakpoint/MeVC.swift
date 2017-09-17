//
//  MeVC.swift
//  breakpoint
//
//  Created by Marc Bollon on 8/27/17.
//  Copyright © 2017 Infocovery. All rights reserved.
//

import UIKit

class MeVC: UIViewController {

    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var emailLbl: UILabel!
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func signOutBtnWasPressed(_ sender: Any) {
        
        //sign out code
        
    }
    
    
}
