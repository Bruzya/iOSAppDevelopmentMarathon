//
//  ViewController.swift
//  Destini
//
//  Created by Evgenii Mazrukho on 03.08.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userChoice = sender.currentTitle!
        storyBrain.nextStory(choice: userChoice)
        
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getTitle()
        choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
}

