///
//  WelcomeViewController.swift
//  FlashChat
//
//  Created by Evgenii Mazrukho on 14.09.2023.
//

import UIKit

class WelcomeViewController: UIViewController {

    //MARK: - UIElements
    @IBOutlet weak var titleLabel: UILabel!
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
       
        titleLabel.text = ""
        var charIndex = 0.0
        let titleText = K.appName
        //label animation symbol by symbol
        for char in titleText {
            Timer.scheduledTimer(withTimeInterval: 0.1 * charIndex, repeats: false) { timer in
                self.titleLabel.text?.append(char)
            }
            charIndex += 1
        }
    }
}
