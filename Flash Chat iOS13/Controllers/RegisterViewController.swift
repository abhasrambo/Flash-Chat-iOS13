//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let err = error {
                    let alert = UIAlertController(title: "Alert", message: "There is some issue. Please Check the information again! \n Possible issues may be: \n \(err.localizedDescription)", preferredStyle: .alert)
                    alert.addAction(UIAlertAction(title: "Try Again", style: .default, handler: .none))
                    self.present(alert, animated: true, completion: nil)
                    print(err)
                } else {
                    //if no error in registration navigate to chet view controller
                    self.performSegue(withIdentifier: "newUserCharScreen", sender: self)
                    
                }
        }
        }
    }
    
}
