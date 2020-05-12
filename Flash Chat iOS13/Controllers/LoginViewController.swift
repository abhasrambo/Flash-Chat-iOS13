//
//  LoginViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().signIn(withEmail: email, password: password) {  authResult, error in
                if let err = error {
                    let alert = UIAlertController(title: "Alert", message: "Please check the login credentials again because of below possible reasons: \n \(err.localizedDescription)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: .none))
                    self.present(alert, animated: true, completion: nil)
                    print(err)
                } else {
                    //if no error in Login navigate to chet view controller
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                    
                }
                
            }
        }
    }
    
}
