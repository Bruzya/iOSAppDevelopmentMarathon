///
//  RegisterViewController.swift
//  FlashChat
//
//  Created by Evgenii Mazrukho on 14.09.2023.
//

import UIKit
import FirebaseAuth

class RegisterViewController: UIViewController {
    
    //MARK: - UIElements
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    //MARK: - Methods
    @IBAction func registerPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            //create user method
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
                if let error {
                    print(error.localizedDescription)
                    //show error
                } else {
                    self.performSegue(withIdentifier: Constants.registerSegue, sender: self)
                    //segue to chat from registerVC
                }
            }
        }
    }
}
