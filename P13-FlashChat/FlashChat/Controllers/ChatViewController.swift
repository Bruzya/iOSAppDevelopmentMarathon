///
//  ChatViewController.swift
//  FlashChat
//
//  Created by Evgenii Mazrukho on 14.09.2023.
//

import UIKit
import FirebaseAuth

class ChatViewController: UIViewController {

    //MARK: - UIElements
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var messageTextfield: UITextField!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "⚡️FlashChat"
        navigationItem.hidesBackButton = true
    }
    
    //MARK: - Methods
    @IBAction func sendPressed(_ sender: UIButton) {
    }
    
    @IBAction func logOutPressed(_ sender: UIBarButtonItem) {
        //firebase instance
        let firebaseAuth = Auth.auth()
        do {
            try firebaseAuth.signOut()
            //if available popToRoot else show error through catch
            navigationController?.popToRootViewController(animated: true)
        } catch let signOutError as NSError {
            print("Error signing out: %@", signOutError)
        }
    }
}
