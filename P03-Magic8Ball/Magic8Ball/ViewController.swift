//
//  ViewController.swift
//  Magic8Ball
//
//  Created by Evgenii Mazrukho on 28.07.2023.
//

import UIKit

class ViewController: UIViewController {

    var ballsArray = [UIImage(named: "ball1"),
                       UIImage(named: "ball2"),
                       UIImage(named: "ball3"),
                       UIImage(named: "ball4"),
                       UIImage(named: "ball5")]
    
    @IBOutlet weak var ballImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func askButtonPressed(_ sender: UIButton) {
        ballImageView.image = ballsArray[Int.random(in: 0...ballsArray.count - 1)]
    }
}

