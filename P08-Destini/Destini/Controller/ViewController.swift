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
    
    var stepsNumber = 0
    
    let stories = [Story(title: "You see a fork in the road",
                         choice1: "Take a left",
                         choice2: "Take a right"),
                  Story(title: "You see a tiger",
                        choice1: "Shout for help",
                        choice2: "Play dead"),
                  Story(title: "You find a treasure chest",
                        choice1: "Open it",
                        choice2: "Check for traps")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let firstAnswer = stories[stepsNumber].choice1
        let secondAnswer = stories[stepsNumber].choice2
        
        if userAnswer == firstAnswer {
            updateLabelsText()
            stepsNumber += 1
        } else if userAnswer == secondAnswer {
            stepsNumber += 1
            updateLabelsText()
            stepsNumber += 1
        }
        
        updateUI()
    }
    
    func updateUI() {
        updateLabelsText()
        stepsNumber = 0
    }
    
    func updateLabelsText() {
        storyLabel.text = stories[stepsNumber].title
        choice1.setTitle(stories[stepsNumber].choice1, for: .normal)
        choice2.setTitle(stories[stepsNumber].choice2, for: .normal)
    }
}

