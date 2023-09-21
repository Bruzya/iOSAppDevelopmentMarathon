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
    
    //MARK: - Properties
    var messages: [Message] = [
        Message(sender: "1@2.com", body: "Hey!"),
        Message(sender: "a@b.com", body: "Hello!"),
        Message(sender: "1@2.com", body: "What's up?")
    ]
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        title = K.appName
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

//MARK: - UITableViewDataSource
extension ChatViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        messages.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: K.cellIdentifier, for: indexPath)
        //if iOS 14 and above
        if #available(iOS 14.0, *) {
            var content = cell.defaultContentConfiguration()
            content.text = messages[indexPath.row].body
            cell.contentConfiguration = content
            return cell
        } else {
            //Fallback on earlier versions beacause of cell.textlabel will be deprecated in the future
            cell.textLabel?.text = messages[indexPath.row].body
            return cell
        }
    }
}

