//
//  LoginVC.swift
//  breakpoint
//
//  Created by Marc Bollon on 8/25/17.
//  Copyright © 2017 Infocovery. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        emailField.delegate = self as? UITextFieldDelegate
        passwordField.delegate = self as? UITextFieldDelegate
        
    }

    @IBAction func signInBtnWasPressed(_ sender: Any) {
        
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.loginUser(withEmail: emailField.text!, andPassword: passwordField.text!, loginComplete: { (success, loginError) in
                
                if success {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.registerUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { (success, registrationError) in
                    
                    if success {
                        AuthService.instance.loginUser(withEmail: self.emailField.text!, andPassword:
                        self.passwordField.text!, loginComplete: { (success, nil) in
                        self.dismiss(animated: true, completion: nil)
                        print("Successfully registered user")
                    })
                        
                    } else {
                        print(String(describing: registrationError?.localizedDescription))
                    }
                })
        })
        }
    }
    
    
    @IBAction func closeBtnWasPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }

    

}
