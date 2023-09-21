///
//  LoginViewController.swift
//  FlashChat
//
//  Created by Evgenii Mazrukho on 14.09.2023.
//

import UIKit
import FirebaseAuth

class LoginViewController: UIViewController {

    //MARK: - UIElements
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!

    //MARK: - Methods
    @IBAction func loginPressed(_ sender: UIButton) {
        if let email = emailTextfield.text, let password = passwordTextfield.text {
            //signIn method
            Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
                if let error {
                    print(error.localizedDescription)
                    //show error
                } else {
                    self.performSegue(withIdentifier: Constants.loginSegue, sender: self)
                    //segue to chat from loginVC
                }
            }
        }
    }
}
